package defpackage;

import android.os.StatFs;
import androidx.compose.foundation.text.selection.DefaultTextSelectionColors_androidKt;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material.Typography;
import androidx.compose.material.TypographyKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.ui.text.TextStyle;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.disk.RealDiskCache;
import coil3.disk.UtilsKt;
import com.squareup.wire.ProtoAdapter;
import java.io.File;
import kotlin.Lazy;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.RangesKt;
import net.blip.libblip.Device;
import net.blip.libblip.User;
import net.blip.libblip.User$Companion$ADAPTER$1;
import net.blip.libblip.frontend.Users$Companion$ADAPTER$1;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class hh implements Function0 {
    public final /* synthetic */ int j;

    public /* synthetic */ hh(int i) {
        this.j = i;
    }

    /* JADX WARN: Type inference failed for: r11v17, types: [coil3.disk.DiskCache$Builder, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        long j;
        switch (this.j) {
            case 0:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = TextSelectionColorsKt.a;
                return DefaultTextSelectionColors_androidKt.a;
            case 1:
                return Boolean.TRUE;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                TextStyle textStyle = TypographyKt.a;
                return new Typography();
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                int i = User$Companion$ADAPTER$1.w;
                return ProtoAdapter.Companion.a(ProtoAdapter.p, Device.t);
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                int i2 = Users$Companion$ADAPTER$1.x;
                return ProtoAdapter.Companion.a(ProtoAdapter.p, User.y);
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                int i3 = Users$Companion$ADAPTER$1.x;
                return ProtoAdapter.Companion.a(ProtoAdapter.p, ProtoAdapter.g);
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Lazy lazy = UtilsKt.a;
                ?? obj = new Object();
                obj.a = FileSystem.j;
                obj.b = 10485760L;
                obj.c = EmptyCoroutineContext.j;
                Path e = FileSystem.k.e("coil3_disk_cache");
                try {
                    File file = e.toFile();
                    file.mkdir();
                    StatFs statFs = new StatFs(file.getAbsolutePath());
                    j = RangesKt.e((long) (0.02d * statFs.getBlockSizeLong() * statFs.getBlockCountLong()), 10485760L, 262144000L);
                } catch (Exception unused) {
                    j = obj.b;
                }
                return new RealDiskCache(j, obj.c, obj.a, e);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new Object();
            default:
                throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`");
        }
    }

    public /* synthetic */ hh(int i, Object obj) {
        this.j = i;
    }
}
