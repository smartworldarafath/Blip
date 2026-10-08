package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import androidx.media3.common.AudioAttributes;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutput;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ AudioTrackAudioOutput.OnRoutingChangedListenerApi24 k;
    public final /* synthetic */ Object l;

    public /* synthetic */ c(AudioTrackAudioOutput.OnRoutingChangedListenerApi24 onRoutingChangedListenerApi24, Object obj, int i) {
        this.j = i;
        this.k = onRoutingChangedListenerApi24;
        this.l = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AudioCapabilitiesReceiver audioCapabilitiesReceiver;
        int i = this.j;
        Object obj = this.l;
        AudioTrackAudioOutput.OnRoutingChangedListenerApi24 onRoutingChangedListenerApi24 = this.k;
        switch (i) {
            case 0:
                AudioDeviceInfo routedDevice = ((AudioRouting) obj).getRoutedDevice();
                if (routedDevice != null) {
                    onRoutingChangedListenerApi24.c.post(new c(onRoutingChangedListenerApi24, routedDevice, 1));
                    return;
                }
                return;
            default:
                AudioDeviceInfo audioDeviceInfo = (AudioDeviceInfo) obj;
                if (onRoutingChangedListenerApi24.d != null && (audioCapabilitiesReceiver = AudioTrackAudioOutputProvider.this.i) != null && !audioDeviceInfo.equals(audioCapabilitiesReceiver.i)) {
                    audioCapabilitiesReceiver.i = audioDeviceInfo;
                    Context context = audioCapabilitiesReceiver.a;
                    AudioAttributes audioAttributes = audioCapabilitiesReceiver.j;
                    List a = audioCapabilitiesReceiver.a();
                    ImmutableList immutableList = AudioCapabilities.e;
                    audioCapabilitiesReceiver.b(AudioCapabilities.b(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), audioAttributes, audioDeviceInfo, a));
                    return;
                }
                return;
        }
    }
}
