package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.exoplayer.audio.AudioCapabilities;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutputProvider;
import androidx.media3.exoplayer.audio.DefaultAudioOffloadSupportProvider;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.audio.MediaCodecAudioRenderer;
import androidx.media3.exoplayer.image.BitmapFactoryImageDecoder;
import androidx.media3.exoplayer.image.ImageRenderer;
import androidx.media3.exoplayer.mediacodec.DefaultMediaCodecAdapterFactory;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.metadata.MetadataRenderer;
import androidx.media3.exoplayer.text.TextOutput;
import androidx.media3.exoplayer.text.TextRenderer;
import androidx.media3.exoplayer.video.MediaCodecVideoRenderer;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionRenderer;
import com.google.common.base.Preconditions;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DefaultRenderersFactory implements RenderersFactory {
    public final Context a;
    public final DefaultMediaCodecAdapterFactory b;

    public DefaultRenderersFactory(Context context) {
        this.a = context;
        this.b = new DefaultMediaCodecAdapterFactory(context);
    }

    public final Renderer[] a(Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput) {
        boolean z;
        boolean z2;
        AudioCapabilities audioCapabilities;
        ArrayList arrayList = new ArrayList();
        Context context = this.a;
        MediaCodecVideoRenderer.Builder builder = new MediaCodecVideoRenderer.Builder(context);
        DefaultMediaCodecAdapterFactory defaultMediaCodecAdapterFactory = this.b;
        builder.c = defaultMediaCodecAdapterFactory;
        builder.d = 5000L;
        builder.e = handler;
        builder.f = videoRendererEventListener;
        builder.g = 50;
        boolean z3 = true;
        Preconditions.n(!builder.b);
        Handler handler2 = builder.e;
        if ((handler2 == null && builder.f == null) || (handler2 != null && builder.f != null)) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        builder.b = true;
        arrayList.add(new MediaCodecVideoRenderer(builder));
        DefaultAudioSink.Builder builder2 = new DefaultAudioSink.Builder(context);
        Preconditions.n(!builder2.d);
        builder2.d = true;
        if (builder2.c == null) {
            builder2.c = new DefaultAudioSink.DefaultAudioProcessorChain(new AudioProcessor[0]);
        }
        AudioTrackAudioOutputProvider audioTrackAudioOutputProvider = builder2.f;
        DefaultAudioOffloadSupportProvider defaultAudioOffloadSupportProvider = builder2.g;
        if (audioTrackAudioOutputProvider == null) {
            if (defaultAudioOffloadSupportProvider == null) {
                builder2.g = new DefaultAudioOffloadSupportProvider(context);
            }
            if (builder2.e == null) {
                builder2.e = DefaultAudioSink.AudioTrackBufferSizeProvider.a;
            }
            AudioTrackAudioOutputProvider.Builder builder3 = new AudioTrackAudioOutputProvider.Builder(context);
            if (context != null) {
                audioCapabilities = null;
            } else {
                audioCapabilities = builder2.b;
            }
            Context context2 = builder3.a;
            if (context2 == null) {
                builder3.d = audioCapabilities;
            }
            DefaultAudioOffloadSupportProvider defaultAudioOffloadSupportProvider2 = builder2.g;
            builder3.b = defaultAudioOffloadSupportProvider2;
            builder3.c = builder2.e;
            if (defaultAudioOffloadSupportProvider2 == null) {
                builder3.b = new DefaultAudioOffloadSupportProvider(context2);
            }
            builder2.f = new AudioTrackAudioOutputProvider(builder3);
        } else {
            if (defaultAudioOffloadSupportProvider == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.n(z2);
            if (builder2.e != null) {
                z3 = false;
            }
            Preconditions.n(z3);
        }
        arrayList.add(new MediaCodecAudioRenderer(this.a, defaultMediaCodecAdapterFactory, handler, audioRendererEventListener, new DefaultAudioSink(builder2)));
        arrayList.add(new TextRenderer(textOutput, handler.getLooper()));
        Looper looper = handler.getLooper();
        for (int i = 0; i < 4; i++) {
            arrayList.add(new MetadataRenderer(metadataOutput, looper));
        }
        arrayList.add(new CameraMotionRenderer());
        arrayList.add(new ImageRenderer(new BitmapFactoryImageDecoder.Factory(context)));
        return (Renderer[]) arrayList.toArray(new Renderer[0]);
    }
}
