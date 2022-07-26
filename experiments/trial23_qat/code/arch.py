''' arch '''
# pylint: disable=no-name-in-module
import tensorflow as tf
from tensorflow.keras.layers import Conv2D, Input, Lambda, Add
from tensorflow.keras.models import Model
from tensorflow.keras.initializers import glorot_normal
import tensorflow.keras.backend as K


def rep(x, channel, name):
    ''' rep module '''
    x = Conv2D(channel * 2, 3, padding='same', kernel_initializer=glorot_normal(), bias_initializer='zeros', name=f'{name}_1')(x)
    x = Conv2D(channel, 1, padding='same', activation='relu', kernel_initializer=glorot_normal(), bias_initializer='zeros', name=f'{name}_2')(x)
    return x


def arch(scale, in_channels, out_channels, channel, blocks):
    ''' arch '''
    inp = Input(shape=(None, None, in_channels))

    x = Conv2D(channel, 3, padding='same', activation='relu', kernel_initializer=glorot_normal(), bias_initializer='zeros')(inp)
    upsampled_inp = Lambda(lambda x_list: tf.concat(x_list, axis=3))([inp]*(scale**2))  # pylint: disable=unexpected-keyword-arg, no-value-for-parameter

    for i in range(blocks):
        x = rep(x, channel, name=f'conv2d_{i+1}')

    # Pixel-Shuffle
    x = Conv2D(out_channels*(scale**2), 3, padding='same', kernel_initializer=glorot_normal(), bias_initializer='zeros', name=f'conv2d_{blocks+1}')(x)
    x = Add()([upsampled_inp, x])

    out = Lambda(lambda x: K.clip(tf.nn.depth_to_space(x, scale), 0., 255.))(x)

    return Model(inputs=inp, outputs=out)


def rep_arch(scale, in_channels, out_channels, channel, blocks):
    ''' rep arch '''
    inp = Input(shape=(None, None, in_channels))

    x = Conv2D(channel + 3, 3, padding='same', activation='relu', kernel_initializer=glorot_normal(), bias_initializer='zeros')(inp)

    for _ in range(blocks):
        x = Conv2D(channel + 3, 3, padding='same', activation='relu', kernel_initializer=glorot_normal(), bias_initializer='zeros')(x)

    # Pixel-Shuffle
    x = Conv2D(out_channels*(scale**2), 3, padding='same', kernel_initializer=glorot_normal(), bias_initializer='zeros')(x)

    out = Lambda(lambda x: K.clip(tf.nn.depth_to_space(x, scale), 0., 255.))(x)

    return Model(inputs=inp, outputs=out)


def clip_arch(scale, in_channels, out_channels, channel, blocks):
    ''' clip arch '''
    inp = Input(shape=(None, None, in_channels))

    x = Conv2D(channel + 3, 3, padding='same', activation='relu')(inp)

    for _ in range(blocks):
        x = Conv2D(channel + 3, 3, padding='same', activation='relu',)(x)

    # Pixel-Shuffle
    x = Conv2D(out_channels*(scale**2), 3, padding='same', activation='relu',)(x)
    # for clip
    x = Conv2D(out_channels*(scale**2), 1, activation='relu',)(x)

    out = Lambda(lambda x: tf.nn.depth_to_space(x, scale))(x)

    return Model(inputs=inp, outputs=out)
