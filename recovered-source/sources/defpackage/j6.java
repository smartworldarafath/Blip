package defpackage;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.ContentAlphaKt;
import androidx.compose.material.ElevationOverlayKt;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.HostDefaultProviderKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.unit.Dp;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import coil3.disk.DiskCache;
import coil3.disk.UtilsKt;
import com.google.accompanist.drawablepainter.DrawablePainterKt;
import com.jaredrummler.android.device.DeviceDatabase;
import com.jaredrummler.android.device.DeviceName;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import java.lang.reflect.Method;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.event.InsertAnalyticsEvent$Companion$ADAPTER$1;
import net.blip.shared.DisabledContentKt;
import net.blip.shared.FocusBlockerKt;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class j6 implements Function0 {
    public final /* synthetic */ int j;

    public /* synthetic */ j6(int i) {
        this.j = i;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:16|(1:18)(4:67|(3:69|(4:76|(1:78)|79|80)(2:73|74)|75)|81|82)|19|(2:60|61)|21|(4:(4:55|56|30|(2:32|33)(2:34|35))|25|26|(4:28|29|30|(0)(0))(5:37|38|(1:43)(1:42)|30|(0)(0)))|23|24) */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00fb, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x010c, code lost:
    
        r1.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0132  */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a() {
        Class<?> returnType;
        String sb;
        DeviceName.DeviceInfo deviceInfo;
        String str;
        DeviceDatabase deviceDatabase;
        switch (this.j) {
            case 0:
                CompositionLocalsKt.b("LocalGraphicsContext");
                throw null;
            case 1:
                CompositionLocalsKt.b("LocalDensity");
                throw null;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                CompositionLocalsKt.b("LocalFontFamilyResolver");
                throw null;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                CompositionLocalsKt.b("LocalFocusManager");
                throw null;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                CompositionLocalsKt.b("LocalFontLoader");
                throw null;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                CompositionLocalsKt.b("LocalHapticFeedback");
                throw null;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                CompositionLocalsKt.b("LocalInputManager");
                throw null;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                CompositionLocalsKt.b("LocalLayoutDirection");
                throw null;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                CompositionLocalsKt.b("LocalProvidableLocaleList");
                throw null;
            case KeyModifiers.a /* 9 */:
                CompositionLocalsKt.b("LocalTextToolbar");
                throw null;
            case KeyModifiers.b /* 10 */:
                CompositionLocalsKt.b("LocalUriHandler");
                throw null;
            case 11:
                CompositionLocalsKt.b("LocalViewConfiguration");
                throw null;
            case KeyModifiers.c /* 12 */:
                ComposerKt.b("Unexpected call to default provider");
                throw new RuntimeException();
            case 13:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ContentAlphaKt.a;
                return Float.valueOf(1.0f);
            case 14:
                LoggerKt.a.getClass();
                Logger.l("TODO: Implement Core shutdown{}", new Pair[0]);
                return Unit.a;
            case 15:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = DisabledContentKt.a;
                return Boolean.FALSE;
            case 16:
                float f = DragGestureDetectorKt.a;
                return Boolean.TRUE;
            case 17:
                Lazy lazy = DrawablePainterKt.a;
                return new Handler(Looper.getMainLooper());
            case 18:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ElevationOverlayKt.a;
                return new Dp(0.0f);
            case 19:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = FocusBlockerKt.a;
                return Boolean.FALSE;
            case 20:
                return Boolean.FALSE;
            case 21:
                String[] strArr = FrameworkSQLiteDatabase.k;
                try {
                    Method declaredMethod = SQLiteDatabase.class.getDeclaredMethod("getThreadSession", null);
                    declaredMethod.setAccessible(true);
                    return declaredMethod;
                } catch (Throwable unused) {
                    return null;
                }
            case 22:
                try {
                    String[] strArr2 = FrameworkSQLiteDatabase.k;
                    Method method = (Method) FrameworkSQLiteDatabase.m.getValue();
                    if (method == null || (returnType = method.getReturnType()) == null) {
                        return null;
                    }
                    Class cls = Integer.TYPE;
                    return returnType.getDeclaredMethod("beginTransaction", cls, SQLiteTransactionListener.class, cls, CancellationSignal.class);
                } catch (Throwable unused2) {
                    return null;
                }
            case 23:
                String str2 = Build.DEVICE;
                String str3 = Build.MODEL;
                if (TextUtils.isEmpty(str3)) {
                    sb = str3;
                } else {
                    char[] charArray = str3.toCharArray();
                    StringBuilder sb2 = new StringBuilder();
                    boolean z = true;
                    for (char c : charArray) {
                        if (z && Character.isLetter(c)) {
                            sb2.append(Character.toUpperCase(c));
                            z = false;
                        } else {
                            if (Character.isWhitespace(c)) {
                                z = true;
                            }
                            sb2.append(c);
                        }
                    }
                    sb = sb2.toString();
                }
                Context context = DeviceName.a;
                if (context == null) {
                    try {
                        try {
                            context = (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
                        } catch (Exception unused3) {
                            context = (Application) Class.forName("android.app.AppGlobals").getMethod("getInitialApplication", null).invoke(null, null);
                        }
                    } catch (Exception unused4) {
                        u2.n("DeviceName must be initialized before usage.");
                        return null;
                    }
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences("device_names", 0);
                String g = jb.g(str2, ":", str3);
                String string = sharedPreferences.getString(g, null);
                try {
                    if (string != null) {
                        try {
                            deviceInfo = new DeviceName.DeviceInfo(new JSONObject(string));
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        str = deviceInfo.b;
                        if (str == null) {
                            return sb;
                        }
                        return str;
                    }
                    deviceInfo = deviceDatabase.h();
                    if (deviceInfo != null) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("manufacturer", deviceInfo.a);
                        jSONObject.put("codename", deviceInfo.c);
                        jSONObject.put("model", deviceInfo.d);
                        jSONObject.put("market_name", deviceInfo.b);
                        SharedPreferences.Editor edit = sharedPreferences.edit();
                        edit.putString(g, jSONObject.toString());
                        edit.apply();
                        deviceDatabase.close();
                        str = deviceInfo.b;
                        if (str == null) {
                        }
                    } else {
                        deviceDatabase.close();
                        if (str2.equals(Build.DEVICE) && Build.MODEL.equals(str3)) {
                            deviceInfo = new DeviceName.DeviceInfo(Build.MANUFACTURER, str2, str2, str3);
                        } else {
                            deviceInfo = new DeviceName.DeviceInfo(null, null, str2, str3);
                        }
                        str = deviceInfo.b;
                        if (str == null) {
                        }
                    }
                } finally {
                }
                deviceDatabase = new DeviceDatabase(context);
                break;
            case 24:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal4 = HostDefaultProviderKt.a;
                throw new IllegalStateException("CompositionLocal LocalHostDefaultProvider not present");
            case 25:
                DefaultScheduler defaultScheduler = Dispatchers.a;
                return MainDispatcherLoader.a.o;
            case 26:
                return (DiskCache) UtilsKt.a.getValue();
            case 27:
                int i = InsertAnalyticsEvent$Companion$ADAPTER$1.w;
                ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
                return ProtoAdapter.Companion.a(protoAdapterKt$commonString$1, protoAdapterKt$commonString$1);
            case 28:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = InspectionModeKt.a;
                return Boolean.FALSE;
            default:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = InspectionTablesKt.a;
                return null;
        }
    }
}
