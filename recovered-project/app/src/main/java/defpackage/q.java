package defpackage;

import android.content.res.TypedArray;
import android.database.Cursor;
import android.media.MediaMetadataRetriever;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.proto.AtProtobuf;
import com.google.firebase.encoders.proto.Protobuf;
import com.squareup.wire.ProtoAdapterKt$commonBool$1;
import com.squareup.wire.internal.Internal;
import io.sentry.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import kotlin.KotlinNothingValueException;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.internal.JsonExceptionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class q {
    public static void A(String str, boolean z, ArrayList arrayList) {
        arrayList.add(str + z);
    }

    public static void B(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.KotlinNothingValueException, java.lang.RuntimeException] */
    public static KotlinNothingValueException C(String str) {
        InlineClassHelperKt.b(str);
        return new RuntimeException();
    }

    public static void D(int i, int i2, int i3, int i4, int i5) {
        Key_androidKt.a(i);
        Key_androidKt.a(i2);
        Key_androidKt.a(i3);
        Key_androidKt.a(i4);
        Key_androidKt.a(i5);
    }

    public static int a(float f, int i, int i2) {
        return (Float.hashCode(f) + i) * i2;
    }

    public static int b(int i, int i2, int i3) {
        return (Integer.hashCode(i) + i2) * i3;
    }

    public static int c(boolean z, ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1, int i, int i2) {
        return protoAdapterKt$commonBool$1.i(i, Boolean.valueOf(z)) + i2;
    }

    public static FieldDescriptor d(AtProtobuf atProtobuf, FieldDescriptor.Builder builder) {
        Map unmodifiableMap;
        Protobuf a = atProtobuf.a();
        if (builder.b == null) {
            builder.b = new HashMap();
        }
        builder.b.put(Protobuf.class, a);
        String str = builder.a;
        if (builder.b == null) {
            unmodifiableMap = Collections.EMPTY_MAP;
        } else {
            unmodifiableMap = Collections.unmodifiableMap(new HashMap(builder.b));
        }
        return new FieldDescriptor(str, unmodifiableMap);
    }

    public static ClassCastException e(Object obj) {
        obj.getClass();
        return new ClassCastException();
    }

    public static String f(int i, int i2, String str, String str2) {
        return str + i + str2 + i2;
    }

    public static String g(int i, String str) {
        return str + i;
    }

    public static String h(long j, String str) {
        return str + j;
    }

    public static String i(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String j(StringBuilder sb, int i, char c) {
        sb.append(i);
        sb.append(c);
        return sb.toString();
    }

    public static String k(StringBuilder sb, long j, String str) {
        sb.append(j);
        sb.append(str);
        return sb.toString();
    }

    public static String l(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static String m(JsonElement jsonElement, int i) {
        return JsonExceptionsKt.d(jsonElement.toString(), i).toString();
    }

    public static StringBuilder n(String str, float f, String str2, float f2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(f);
        sb.append(str2);
        sb.append(f2);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder o(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.KotlinNothingValueException, java.lang.RuntimeException] */
    public static KotlinNothingValueException p(String str) {
        androidx.compose.ui.internal.InlineClassHelperKt.c(str);
        return new RuntimeException();
    }

    public static void q(int i, int i2, int i3, int i4, int i5) {
        Util.z(i);
        Util.z(i2);
        Util.z(i3);
        Util.z(i4);
        Util.z(i5);
    }

    public static void r(int i, GapComposer gapComposer, int i2, e6 e6Var) {
        gapComposer.g0(Integer.valueOf(i));
        gapComposer.b(Integer.valueOf(i2), e6Var);
    }

    public static void s(int i, GapComposer gapComposer, e6 e6Var, GapComposer gapComposer2) {
        Updater.c(gapComposer, Integer.valueOf(i), e6Var);
        Updater.b(gapComposer2);
    }

    public static void t(int i, HashMap hashMap, String str, int i2, String str2) {
        hashMap.put(str, Integer.valueOf(i));
        hashMap.put(str2, Integer.valueOf(i2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void u(Cursor cursor) {
        boolean isTerminated;
        if (cursor instanceof AutoCloseable) {
            cursor.close();
            return;
        }
        if (cursor instanceof ExecutorService) {
            ExecutorService executorService = (ExecutorService) cursor;
            if (executorService != ForkJoinPool.commonPool() && !(isTerminated = executorService.isTerminated())) {
                executorService.shutdown();
                boolean z = false;
                while (!isTerminated) {
                    try {
                        isTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                    } catch (InterruptedException unused) {
                        if (!z) {
                            executorService.shutdownNow();
                            z = true;
                        }
                    }
                }
                if (z) {
                    Thread.currentThread().interrupt();
                    return;
                }
                return;
            }
            return;
        }
        if (cursor instanceof TypedArray) {
            ((TypedArray) cursor).recycle();
        } else if (cursor instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) cursor).release();
        } else {
            fe.h();
        }
    }

    public static void v(CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1, long j) {
        canvasDrawScope$drawContext$1.a().r();
        canvasDrawScope$drawContext$1.h(j);
    }

    public static /* synthetic */ void w(Object obj) {
        if (obj == null) {
            return;
        }
        d.i();
    }

    public static void x(String str, int i, String str2) {
        Log.f(str2, str + i);
    }

    public static void y(String str, String str2, String str3) {
        Log.f(str3, str + str2);
    }

    public static void z(String str, String str2, ArrayList arrayList) {
        arrayList.add(str2.concat(Internal.c(str)));
    }
}
