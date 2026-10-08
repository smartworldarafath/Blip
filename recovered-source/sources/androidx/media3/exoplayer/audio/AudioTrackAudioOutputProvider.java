package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioCapabilitiesReceiver;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutput;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.util.SpatializerWrapper;
import androidx.media3.extractor.ExtractorUtil;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import defpackage.fe;
import defpackage.p;
import defpackage.u2;
import java.math.RoundingMode;
import java.util.List;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioTrackAudioOutputProvider implements AudioOutputProvider {
    public static final Supplier l = Suppliers.a(new u2(4));
    public final Context a;
    public final DefaultAudioSink.AudioTrackBufferSizeProvider b;
    public final DefaultAudioSink.AudioOffloadSupportProvider c;
    public final CapabilityChangeListener d;
    public final float e;
    public ListenerSet f;
    public Clock g;
    public AudioCapabilities h;
    public AudioCapabilitiesReceiver i;
    public Looper j;
    public Context k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final Context a;
        public DefaultAudioSink.AudioOffloadSupportProvider b;
        public DefaultAudioSink.AudioTrackBufferSizeProvider c;
        public AudioCapabilities d;
        public final float e;

        public Builder(Context context) {
            Context context2;
            if (context != null) {
                context2 = context.getApplicationContext();
            } else {
                context2 = null;
            }
            this.a = context2;
            this.c = DefaultAudioSink.AudioTrackBufferSizeProvider.a;
            if (context == null) {
                this.d = AudioCapabilities.f;
            }
            this.e = 8.0f;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class CapabilityChangeListener implements AudioTrackAudioOutput.CapabilityChangeListener {
        public CapabilityChangeListener() {
        }
    }

    public AudioTrackAudioOutputProvider(Builder builder) {
        CapabilityChangeListener capabilityChangeListener;
        Context context = builder.a;
        this.a = context;
        DefaultAudioSink.AudioOffloadSupportProvider audioOffloadSupportProvider = builder.b;
        audioOffloadSupportProvider.getClass();
        this.c = audioOffloadSupportProvider;
        this.b = builder.c;
        this.h = builder.d;
        if (context == null) {
            capabilityChangeListener = null;
        } else {
            capabilityChangeListener = new CapabilityChangeListener();
        }
        this.d = capabilityChangeListener;
        this.e = builder.e;
        this.g = Clock.a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0019, code lost:
    
        if (r0 != r1) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AudioTrackAudioOutput a(AudioOutputProvider.OutputConfig outputConfig) {
        Context context;
        AudioAttributes a;
        Context context2;
        Context createDeviceContext;
        int deviceId;
        try {
            int i = outputConfig.h;
            int i2 = outputConfig.i;
            if (i2 != -1 && (context2 = this.a) != null && Build.VERSION.SDK_INT >= 34) {
                Context context3 = this.k;
                if (context3 != null) {
                    deviceId = context3.getDeviceId();
                }
                createDeviceContext = context2.createDeviceContext(i2);
                this.k = createDeviceContext;
                context = this.k;
                i = 0;
            } else {
                context = null;
            }
            AudioFormat build = new AudioFormat.Builder().setSampleRate(outputConfig.b).setChannelMask(outputConfig.c).setEncoding(outputConfig.a).build();
            androidx.media3.common.AudioAttributes audioAttributes = outputConfig.g;
            try {
                if (outputConfig.d) {
                    a = new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
                } else {
                    a = audioAttributes.a();
                }
                AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(a).setAudioFormat(build).setTransferMode(1).setBufferSizeInBytes(outputConfig.f).setSessionId(i);
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= 29) {
                    sessionId.setOffloadedPlayback(outputConfig.e);
                }
                if (i3 >= 34 && context != null) {
                    sessionId.setContext(context);
                }
                AudioTrack build2 = sessionId.build();
                if (build2.getState() == 1) {
                    return new AudioTrackAudioOutput(build2, outputConfig, this.d, this.e, this.g);
                }
                try {
                    build2.release();
                } catch (Exception unused) {
                }
                throw new Exception();
            } catch (IllegalArgumentException e) {
                e = e;
                throw new Exception(e);
            }
        } catch (IllegalArgumentException | UnsupportedOperationException e2) {
            e = e2;
        }
    }

    public final AudioOutputProvider.FormatSupport b(AudioOutputProvider.FormatConfig formatConfig) {
        e(formatConfig);
        Format format = formatConfig.a;
        androidx.media3.common.AudioAttributes audioAttributes = formatConfig.b;
        AudioOffloadSupport a = ((DefaultAudioOffloadSupportProvider) this.c).a(format, audioAttributes);
        AudioOutputProvider.FormatSupport.Builder builder = new AudioOutputProvider.FormatSupport.Builder();
        String str = format.p;
        int i = format.M;
        int i2 = 0;
        if (!Objects.equals(str, "audio/raw") ? this.h.c(format, audioAttributes) != null : i == 2) {
            i2 = 2;
        }
        builder.d = i2;
        builder.a = a.a;
        builder.b = a.b;
        builder.c = a.c;
        return builder.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ba  */
    /* JADX WARN: Type inference failed for: r0v20, types: [androidx.media3.exoplayer.audio.AudioOutputProvider$OutputConfig$Builder, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AudioOutputProvider.OutputConfig c(AudioOutputProvider.FormatConfig formatConfig) {
        AudioOffloadSupport audioOffloadSupport;
        char c;
        int i;
        boolean z;
        boolean z2;
        int i2;
        int i3;
        boolean z3;
        double d;
        double d2;
        boolean z4;
        int b;
        boolean z5;
        int i4;
        int b2;
        boolean z6;
        boolean z7;
        boolean z8;
        Format format = formatConfig.a;
        boolean z9 = formatConfig.d;
        androidx.media3.common.AudioAttributes audioAttributes = formatConfig.b;
        e(formatConfig);
        String str = format.p;
        int i5 = format.K;
        int i6 = format.J;
        int i7 = format.L;
        int i8 = format.M;
        if (Objects.equals(str, "audio/raw")) {
            Preconditions.e(Util.A(i8));
            if (i5 == -1) {
                i5 = Util.m(i6);
            }
            i = Util.n(i8) * i6;
            z = false;
            c = 0;
        } else {
            if (z9) {
                audioOffloadSupport = ((DefaultAudioOffloadSupportProvider) this.c).a(format, audioAttributes);
            } else {
                audioOffloadSupport = AudioOffloadSupport.d;
            }
            if (z9 && audioOffloadSupport.a) {
                str.getClass();
                int b3 = MimeTypes.b(str, format.l);
                if (i5 == -1) {
                    i5 = Util.m(i6);
                }
                if ((b3 == 11 || b3 == 12) && i7 >= 16000 && !((Boolean) l.get()).booleanValue()) {
                    if (b3 == 12 && i6 == 2) {
                        i5 = 4;
                    }
                    i7 /= 2;
                    b3 = 10;
                }
                z = audioOffloadSupport.b;
                i8 = b3;
                i = -1;
                c = 1;
                z2 = true;
                i2 = format.k;
                if (Objects.equals(str, "audio/vnd.dts.hd;profile=lbr") && i2 == -1) {
                    i2 = 768000;
                }
                i3 = formatConfig.h;
                if (i3 == -1) {
                    z4 = true;
                } else {
                    if (AudioTrack.getMinBufferSize(i7, i5, i8) != -2) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    Preconditions.n(z3);
                    if (i == -1) {
                        i = 1;
                    }
                    if (z2) {
                        d = this.e;
                    } else {
                        d = 1.0d;
                    }
                    ((DefaultAudioTrackBufferSizeProvider) this.b).getClass();
                    if (c != 0) {
                        if (c != 1) {
                            if (c == 2) {
                                z4 = true;
                                if (i8 == 5) {
                                    i4 = 500000;
                                } else if (i8 == 8) {
                                    i4 = 1000000;
                                } else {
                                    i4 = 250000;
                                }
                                if (i2 != -1) {
                                    RoundingMode roundingMode = RoundingMode.CEILING;
                                    b2 = IntMath.b(i2, 8);
                                } else {
                                    b2 = ExtractorUtil.b(i8);
                                    if (b2 != -2147483647) {
                                        z6 = true;
                                    } else {
                                        z6 = false;
                                    }
                                    Preconditions.n(z6);
                                }
                                d2 = d;
                                b = Ints.b((i4 * b2) / 1000000);
                            } else {
                                fe.h();
                                return null;
                            }
                        } else {
                            d2 = d;
                            z4 = true;
                            int b4 = ExtractorUtil.b(i8);
                            if (b4 != -2147483647) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            Preconditions.n(z5);
                            b = Ints.b((50000000 * b4) / 1000000);
                        }
                    } else {
                        d2 = d;
                        z4 = true;
                        b = Ints.b(((500000 * i7) * i) / 1000000);
                    }
                    i3 = (((Math.max(r5, (int) (b * d2)) + i) - 1) / i) * i;
                }
                ?? obj = new Object();
                androidx.media3.common.AudioAttributes audioAttributes2 = androidx.media3.common.AudioAttributes.b;
                obj.i = -1;
                obj.b = i7;
                obj.c = i5;
                obj.a = i8;
                obj.f = i3;
                obj.h = formatConfig.e;
                obj.g = audioAttributes;
                z7 = z4;
                if (c != z7) {
                    z8 = z7;
                } else {
                    z8 = false;
                }
                obj.e = z8;
                obj.d = formatConfig.g;
                obj.j = z2;
                obj.k = z;
                obj.i = formatConfig.f;
                return new AudioOutputProvider.OutputConfig(obj);
            }
            Pair c2 = this.h.c(format, audioAttributes);
            if (c2 != null) {
                i8 = ((Integer) c2.first).intValue();
                i5 = ((Integer) c2.second).intValue();
                c = 2;
                i = -1;
                z = false;
            } else {
                throw new Exception("Unable to configure passthrough for: " + format);
            }
        }
        z2 = false;
        i2 = format.k;
        if (Objects.equals(str, "audio/vnd.dts.hd;profile=lbr")) {
            i2 = 768000;
        }
        i3 = formatConfig.h;
        if (i3 == -1) {
        }
        ?? obj2 = new Object();
        androidx.media3.common.AudioAttributes audioAttributes22 = androidx.media3.common.AudioAttributes.b;
        obj2.i = -1;
        obj2.b = i7;
        obj2.c = i5;
        obj2.a = i8;
        obj2.f = i3;
        obj2.h = formatConfig.e;
        obj2.g = audioAttributes;
        z7 = z4;
        if (c != z7) {
        }
        obj2.e = z8;
        obj2.d = formatConfig.g;
        obj2.j = z2;
        obj2.k = z;
        obj2.i = formatConfig.f;
        return new AudioOutputProvider.OutputConfig(obj2);
    }

    public final void d() {
        SpatializerWrapper spatializerWrapper;
        Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener;
        ListenerSet listenerSet = this.f;
        if (listenerSet != null) {
            listenerSet.d();
        }
        AudioCapabilitiesReceiver audioCapabilitiesReceiver = this.i;
        if (audioCapabilitiesReceiver != null) {
            Context context = audioCapabilitiesReceiver.a;
            if (audioCapabilitiesReceiver.k) {
                audioCapabilitiesReceiver.h = null;
                AudioManagerCompat.a(context).unregisterAudioDeviceCallback(audioCapabilitiesReceiver.d);
                if (Build.VERSION.SDK_INT >= 32 && (spatializerWrapper = audioCapabilitiesReceiver.g) != null) {
                    Handler handler = spatializerWrapper.c;
                    Spatializer spatializer = spatializerWrapper.a;
                    if (spatializer != null && (spatializer$OnSpatializerStateChangedListener = spatializerWrapper.d) != null && handler != null) {
                        spatializer.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
                        handler.removeCallbacksAndMessages(null);
                    }
                    audioCapabilitiesReceiver.g = null;
                }
                context.unregisterReceiver(audioCapabilitiesReceiver.e);
                AudioCapabilitiesReceiver.ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver = audioCapabilitiesReceiver.f;
                if (externalSurroundSoundSettingObserver != null) {
                    externalSurroundSoundSettingObserver.a.unregisterContentObserver(externalSurroundSoundSettingObserver);
                }
                audioCapabilitiesReceiver.k = false;
            }
        }
    }

    public final void e(AudioOutputProvider.FormatConfig formatConfig) {
        Context context;
        AudioCapabilities b;
        AudioDeviceInfo audioDeviceInfo = formatConfig.c;
        androidx.media3.common.AudioAttributes audioAttributes = formatConfig.b;
        f();
        AudioCapabilitiesReceiver audioCapabilitiesReceiver = this.i;
        if (audioCapabilitiesReceiver == null && (context = this.a) != null) {
            AudioCapabilitiesReceiver audioCapabilitiesReceiver2 = new AudioCapabilitiesReceiver(context, new p(2, this), audioAttributes, audioDeviceInfo);
            this.i = audioCapabilitiesReceiver2;
            if (audioCapabilitiesReceiver2.k) {
                b = audioCapabilitiesReceiver2.h;
                b.getClass();
            } else {
                audioCapabilitiesReceiver2.k = true;
                AudioCapabilitiesReceiver.ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver = audioCapabilitiesReceiver2.f;
                if (externalSurroundSoundSettingObserver != null) {
                    externalSurroundSoundSettingObserver.a.registerContentObserver(externalSurroundSoundSettingObserver.b, false, externalSurroundSoundSettingObserver);
                }
                Context context2 = audioCapabilitiesReceiver2.a;
                AudioManager a = AudioManagerCompat.a(context2);
                AudioCapabilitiesReceiver.AudioDeviceCallback audioDeviceCallback = audioCapabilitiesReceiver2.d;
                Handler handler = audioCapabilitiesReceiver2.c;
                a.registerAudioDeviceCallback(audioDeviceCallback, handler);
                if (Build.VERSION.SDK_INT >= 32 && audioCapabilitiesReceiver2.g == null) {
                    audioCapabilitiesReceiver2.g = new SpatializerWrapper(context2, new defpackage.e(4, audioCapabilitiesReceiver2), Boolean.valueOf(Util.C(context2)));
                }
                b = AudioCapabilities.b(context2, context2.registerReceiver(audioCapabilitiesReceiver2.e, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, handler), audioCapabilitiesReceiver2.j, audioCapabilitiesReceiver2.i, audioCapabilitiesReceiver2.a());
                audioCapabilitiesReceiver2.h = b;
            }
            this.h = b;
        } else if (audioCapabilitiesReceiver != null) {
            if (audioDeviceInfo != null && !audioDeviceInfo.equals(audioCapabilitiesReceiver.i)) {
                audioCapabilitiesReceiver.i = audioDeviceInfo;
                Context context3 = audioCapabilitiesReceiver.a;
                androidx.media3.common.AudioAttributes audioAttributes2 = audioCapabilitiesReceiver.j;
                List a2 = audioCapabilitiesReceiver.a();
                ImmutableList immutableList = AudioCapabilities.e;
                audioCapabilitiesReceiver.b(AudioCapabilities.b(context3, context3.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), audioAttributes2, audioDeviceInfo, a2));
            }
            AudioCapabilitiesReceiver audioCapabilitiesReceiver3 = this.i;
            if (!Objects.equals(audioAttributes, audioCapabilitiesReceiver3.j)) {
                audioCapabilitiesReceiver3.j = audioAttributes;
                Context context4 = audioCapabilitiesReceiver3.a;
                AudioDeviceInfo audioDeviceInfo2 = audioCapabilitiesReceiver3.i;
                List a3 = audioCapabilitiesReceiver3.a();
                ImmutableList immutableList2 = AudioCapabilities.e;
                audioCapabilitiesReceiver3.b(AudioCapabilities.b(context4, context4.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), audioAttributes, audioDeviceInfo2, a3));
            }
        }
        this.h.getClass();
    }

    public final void f() {
        boolean z;
        String name;
        if (this.a == null) {
            return;
        }
        Looper myLooper = Looper.myLooper();
        Looper looper = this.j;
        if (looper != null && looper != myLooper) {
            z = false;
        } else {
            z = true;
        }
        String str = "null";
        if (looper == null) {
            name = "null";
        } else {
            name = looper.getThread().getName();
        }
        if (myLooper != null) {
            str = myLooper.getThread().getName();
        }
        if (z) {
            this.j = myLooper;
        } else {
            u2.l(Strings.a("AudioTrackAudioOutputProvider accessed on multiple threads: %s and %s", name, str));
        }
    }
}
