package net.blip.android.ui.util;

import androidx.activity.ComponentActivity;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.AndroidUiDispatcher;
import androidx.compose.ui.unit.Density;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.TimeoutKt;
import net.blip.shared.GeometryKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CaptureComposableKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(ComponentActivity componentActivity, long j, Density density, boolean z, ComposableLambdaImpl composableLambdaImpl, ContinuationImpl continuationImpl) {
        CaptureComposableKt$captureComposable$1 captureComposableKt$captureComposable$1;
        CoroutineSingletons coroutineSingletons;
        int i;
        ComposableLambdaImpl composableLambdaImpl2;
        ComponentActivity componentActivity2;
        long j2;
        long j3;
        boolean z2;
        Object e;
        try {
            if (continuationImpl instanceof CaptureComposableKt$captureComposable$1) {
                CaptureComposableKt$captureComposable$1 captureComposableKt$captureComposable$12 = (CaptureComposableKt$captureComposable$1) continuationImpl;
                int i2 = captureComposableKt$captureComposable$12.s;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    captureComposableKt$captureComposable$12.s = i2 - Integer.MIN_VALUE;
                    captureComposableKt$captureComposable$1 = captureComposableKt$captureComposable$12;
                    Object obj = captureComposableKt$captureComposable$1.r;
                    coroutineSingletons = CoroutineSingletons.j;
                    i = captureComposableKt$captureComposable$1.s;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                ResultKt.b(obj);
                                return obj;
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        long j4 = captureComposableKt$captureComposable$1.p;
                        boolean z3 = captureComposableKt$captureComposable$1.q;
                        long j5 = captureComposableKt$captureComposable$1.o;
                        composableLambdaImpl2 = captureComposableKt$captureComposable$1.n;
                        ComponentActivity componentActivity3 = captureComposableKt$captureComposable$1.m;
                        ResultKt.b(obj);
                        j3 = j4;
                        z2 = z3;
                        componentActivity2 = componentActivity3;
                        j2 = j5;
                    } else {
                        ResultKt.b(obj);
                        long a = GeometryKt.a(density.D0(j));
                        if (((int) (a >> 32)) > 0 && ((int) (4294967295L & a)) > 0) {
                            CaptureComposableKt$captureComposable$3 captureComposableKt$captureComposable$3 = new CaptureComposableKt$captureComposable$3(componentActivity, null);
                            captureComposableKt$captureComposable$1.m = componentActivity;
                            composableLambdaImpl2 = composableLambdaImpl;
                            captureComposableKt$captureComposable$1.n = composableLambdaImpl2;
                            captureComposableKt$captureComposable$1.o = j;
                            captureComposableKt$captureComposable$1.q = z;
                            captureComposableKt$captureComposable$1.p = a;
                            captureComposableKt$captureComposable$1.s = 1;
                            obj = TimeoutKt.b(1000L, captureComposableKt$captureComposable$3, captureComposableKt$captureComposable$1);
                            if (obj != coroutineSingletons) {
                                componentActivity2 = componentActivity;
                                j2 = j;
                                j3 = a;
                                z2 = z;
                            } else {
                                return coroutineSingletons;
                            }
                        } else {
                            u2.g("pixel size must not have zero dimension");
                            return null;
                        }
                    }
                    ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                    CoroutineContext coroutineContext = (CoroutineContext) AndroidUiDispatcher.v.getValue();
                    CaptureComposableKt$captureComposable$4 captureComposableKt$captureComposable$4 = new CaptureComposableKt$captureComposable$4(componentActivity2, j3, j2, z2, composableLambdaImpl3, null);
                    captureComposableKt$captureComposable$1.m = null;
                    captureComposableKt$captureComposable$1.n = null;
                    captureComposableKt$captureComposable$1.o = j2;
                    captureComposableKt$captureComposable$1.q = z2;
                    captureComposableKt$captureComposable$1.p = j3;
                    captureComposableKt$captureComposable$1.s = 2;
                    e = BuildersKt.e(coroutineContext, captureComposableKt$captureComposable$4, captureComposableKt$captureComposable$1);
                    if (e != coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    return e;
                }
            }
            if (i == 0) {
            }
            ComposableLambdaImpl composableLambdaImpl32 = composableLambdaImpl2;
            CoroutineContext coroutineContext2 = (CoroutineContext) AndroidUiDispatcher.v.getValue();
            CaptureComposableKt$captureComposable$4 captureComposableKt$captureComposable$42 = new CaptureComposableKt$captureComposable$4(componentActivity2, j3, j2, z2, composableLambdaImpl32, null);
            captureComposableKt$captureComposable$1.m = null;
            captureComposableKt$captureComposable$1.n = null;
            captureComposableKt$captureComposable$1.o = j2;
            captureComposableKt$captureComposable$1.q = z2;
            captureComposableKt$captureComposable$1.p = j3;
            captureComposableKt$captureComposable$1.s = 2;
            e = BuildersKt.e(coroutineContext2, captureComposableKt$captureComposable$42, captureComposableKt$captureComposable$1);
            if (e != coroutineSingletons) {
            }
        } catch (Exception unused) {
            u2.l("Timed out waiting for activity window token");
            return null;
        }
        captureComposableKt$captureComposable$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = captureComposableKt$captureComposable$1.r;
        coroutineSingletons = CoroutineSingletons.j;
        i = captureComposableKt$captureComposable$1.s;
    }
}
