package defpackage;

import android.content.Context;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e3 implements Supplier, SupportSQLiteOpenHelper.Factory {
    public final /* synthetic */ int j;
    public final /* synthetic */ Context k;

    public /* synthetic */ e3(Context context, int i) {
        this.j = i;
        this.k = context;
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory, java.lang.Object] */
    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    public SupportSQLiteOpenHelper a(SupportSQLiteOpenHelper.Configuration configuration) {
        SupportSQLiteOpenHelper.Configuration.Builder builder = new SupportSQLiteOpenHelper.Configuration.Builder(this.k);
        builder.b = configuration.b;
        SupportSQLiteOpenHelper.Callback callback = configuration.c;
        callback.getClass();
        builder.c = callback;
        builder.d = true;
        builder.e = true;
        return new Object().a(builder.a());
    }

    @Override // com.google.common.base.Supplier
    public Object get() {
        DefaultBandwidthMeter defaultBandwidthMeter;
        int i = this.j;
        Context context = this.k;
        switch (i) {
            case 0:
                return AudioManagerCompat.a(context);
            case 1:
                int i2 = ExoPlayer.Builder.C;
                return new DefaultRenderersFactory(context);
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                int i3 = ExoPlayer.Builder.C;
                new DefaultExtractorsFactory();
                return new DefaultMediaSourceFactory(context);
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                int i4 = ExoPlayer.Builder.C;
                return new DefaultTrackSelector(context);
            default:
                int i5 = ExoPlayer.Builder.C;
                ImmutableList immutableList = DefaultBandwidthMeter.p;
                synchronized (DefaultBandwidthMeter.class) {
                    try {
                        if (DefaultBandwidthMeter.v == null) {
                            DefaultBandwidthMeter.Builder builder = new DefaultBandwidthMeter.Builder(context);
                            DefaultBandwidthMeter.v = new DefaultBandwidthMeter(builder.a, builder.b, builder.c, builder.d, builder.e);
                        }
                        defaultBandwidthMeter = DefaultBandwidthMeter.v;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return defaultBandwidthMeter;
        }
    }
}
