package androidx.media3.exoplayer.audio;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioDeviceInfo;
import android.media.Spatializer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.util.SpatializerWrapper;
import com.google.common.collect.ImmutableList;
import defpackage.k;
import defpackage.p;
import java.util.List;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioCapabilitiesReceiver {
    public final Context a;
    public final p b;
    public final Handler c;
    public final AudioDeviceCallback d;
    public final BroadcastReceiver e;
    public final ExternalSurroundSoundSettingObserver f;
    public SpatializerWrapper g;
    public AudioCapabilities h;
    public AudioDeviceInfo i;
    public AudioAttributes j;
    public boolean k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class AudioDeviceCallback extends android.media.AudioDeviceCallback {
        public AudioDeviceCallback() {
        }

        @Override // android.media.AudioDeviceCallback
        public final void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
            AudioCapabilitiesReceiver.this.c();
        }

        @Override // android.media.AudioDeviceCallback
        public final void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = AudioCapabilitiesReceiver.this;
            AudioDeviceInfo audioDeviceInfo = audioCapabilitiesReceiver.i;
            String str = Util.a;
            int length = audioDeviceInfoArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (Objects.equals(audioDeviceInfoArr[i], audioDeviceInfo)) {
                    audioCapabilitiesReceiver.i = null;
                    break;
                }
                i++;
            }
            audioCapabilitiesReceiver.c();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ExternalSurroundSoundSettingObserver extends ContentObserver {
        public final ContentResolver a;
        public final Uri b;

        public ExternalSurroundSoundSettingObserver(Handler handler, ContentResolver contentResolver, Uri uri) {
            super(handler);
            this.a = contentResolver;
            this.b = uri;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            AudioCapabilitiesReceiver.this.c();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class HdmiAudioPlugBroadcastReceiver extends BroadcastReceiver {
        public HdmiAudioPlugBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                AudioCapabilitiesReceiver audioCapabilitiesReceiver = AudioCapabilitiesReceiver.this;
                audioCapabilitiesReceiver.b(AudioCapabilities.b(context, intent, audioCapabilitiesReceiver.j, audioCapabilitiesReceiver.i, audioCapabilitiesReceiver.a()));
            }
        }
    }

    public AudioCapabilitiesReceiver(Context context, p pVar, AudioAttributes audioAttributes, AudioDeviceInfo audioDeviceInfo) {
        Uri uriFor;
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        this.b = pVar;
        this.j = audioAttributes;
        this.i = audioDeviceInfo;
        String str = Util.a;
        Looper myLooper = Looper.myLooper();
        Handler handler = new Handler(myLooper == null ? Looper.getMainLooper() : myLooper, null);
        this.c = handler;
        this.d = new AudioDeviceCallback();
        this.e = new HdmiAudioPlugBroadcastReceiver();
        ImmutableList immutableList = AudioCapabilities.e;
        String str2 = Build.MANUFACTURER;
        if (!str2.equals("Amazon") && !str2.equals("Xiaomi")) {
            uriFor = null;
        } else {
            uriFor = Settings.Global.getUriFor("external_surround_sound_enabled");
        }
        this.f = uriFor != null ? new ExternalSurroundSoundSettingObserver(handler, applicationContext.getContentResolver(), uriFor) : null;
    }

    public final List a() {
        SpatializerWrapper spatializerWrapper;
        boolean isAvailable;
        Spatializer spatializer;
        boolean isEnabled;
        List spatializedChannelMasks;
        int i = Build.VERSION.SDK_INT;
        if (i >= 32 && (spatializerWrapper = this.g) != null) {
            Spatializer spatializer2 = spatializerWrapper.a;
            if (spatializer2 != null && spatializerWrapper.b) {
                isAvailable = spatializer2.isAvailable();
                if (isAvailable && (spatializer = spatializerWrapper.a) != null) {
                    isEnabled = spatializer.isEnabled();
                    if (isEnabled) {
                        if (i >= 36) {
                            Spatializer spatializer3 = spatializerWrapper.a;
                            spatializer3.getClass();
                            spatializedChannelMasks = k.c(spatializer3).getSpatializedChannelMasks();
                            return spatializedChannelMasks;
                        }
                        return ImmutableList.t(252);
                    }
                }
            }
            return ImmutableList.r();
        }
        return ImmutableList.r();
    }

    public final void b(AudioCapabilities audioCapabilities) {
        if (this.k && !audioCapabilities.equals(this.h)) {
            this.h = audioCapabilities;
            AudioTrackAudioOutputProvider audioTrackAudioOutputProvider = (AudioTrackAudioOutputProvider) this.b.k;
            audioTrackAudioOutputProvider.f();
            AudioCapabilities audioCapabilities2 = audioTrackAudioOutputProvider.h;
            if (audioCapabilities2 != null && !audioCapabilities.equals(audioCapabilities2)) {
                audioTrackAudioOutputProvider.h = audioCapabilities;
                ListenerSet listenerSet = audioTrackAudioOutputProvider.f;
                if (listenerSet != null) {
                    listenerSet.f(-1, new a(4));
                }
            }
        }
    }

    public final void c() {
        List a = a();
        AudioAttributes audioAttributes = this.j;
        AudioDeviceInfo audioDeviceInfo = this.i;
        ImmutableList immutableList = AudioCapabilities.e;
        IntentFilter intentFilter = new IntentFilter("android.media.action.HDMI_AUDIO_PLUG");
        Context context = this.a;
        b(AudioCapabilities.b(context, context.registerReceiver(null, intentFilter), audioAttributes, audioDeviceInfo, a));
    }
}
