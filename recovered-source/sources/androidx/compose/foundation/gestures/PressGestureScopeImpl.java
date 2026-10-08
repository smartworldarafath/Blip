package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Density;
import defpackage.u2;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PressGestureScopeImpl implements PressGestureScope, Density {
    public final /* synthetic */ Density j;
    public boolean k;
    public boolean l;
    public final MutexImpl m = new MutexImpl();

    public PressGestureScopeImpl(Density density) {
        this.j = density;
    }

    @Override // androidx.compose.ui.unit.Density
    public final long D0(long j) {
        return this.j.D0(j);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float E(long j) {
        return this.j.E(j);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float I0(long j) {
        return this.j.I0(j);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long N(int i) {
        return this.j.N(i);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long P(float f) {
        return this.j.P(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float U(int i) {
        return this.j.U(i);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float X(float f) {
        return this.j.X(f);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(ContinuationImpl continuationImpl) {
        PressGestureScopeImpl$awaitRelease$1 pressGestureScopeImpl$awaitRelease$1;
        Object obj;
        int i;
        if (continuationImpl instanceof PressGestureScopeImpl$awaitRelease$1) {
            pressGestureScopeImpl$awaitRelease$1 = (PressGestureScopeImpl$awaitRelease$1) continuationImpl;
            int i2 = pressGestureScopeImpl$awaitRelease$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pressGestureScopeImpl$awaitRelease$1.o = i2 - Integer.MIN_VALUE;
                obj = pressGestureScopeImpl$awaitRelease$1.m;
                Object obj2 = CoroutineSingletons.j;
                i = pressGestureScopeImpl$awaitRelease$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    pressGestureScopeImpl$awaitRelease$1.o = 1;
                    obj = e(pressGestureScopeImpl$awaitRelease$1);
                    if (obj == obj2) {
                        return obj2;
                    }
                }
                if (!((Boolean) obj).booleanValue()) {
                    return Unit.a;
                }
                throw new CancellationException("The press gesture was canceled.");
            }
        }
        pressGestureScopeImpl$awaitRelease$1 = new PressGestureScopeImpl$awaitRelease$1(this, continuationImpl);
        obj = pressGestureScopeImpl$awaitRelease$1.m;
        Object obj22 = CoroutineSingletons.j;
        i = pressGestureScopeImpl$awaitRelease$1.o;
        if (i == 0) {
        }
        if (!((Boolean) obj).booleanValue()) {
        }
    }

    public final void b() {
        this.l = true;
        MutexImpl mutexImpl = this.m;
        if (mutexImpl.e()) {
            mutexImpl.h(null);
        }
    }

    public final void c() {
        this.k = true;
        MutexImpl mutexImpl = this.m;
        if (mutexImpl.e()) {
            mutexImpl.h(null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object d(ContinuationImpl continuationImpl) {
        PressGestureScopeImpl$reset$1 pressGestureScopeImpl$reset$1;
        int i;
        if (continuationImpl instanceof PressGestureScopeImpl$reset$1) {
            pressGestureScopeImpl$reset$1 = (PressGestureScopeImpl$reset$1) continuationImpl;
            int i2 = pressGestureScopeImpl$reset$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pressGestureScopeImpl$reset$1.o = i2 - Integer.MIN_VALUE;
                Object obj = pressGestureScopeImpl$reset$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = pressGestureScopeImpl$reset$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    pressGestureScopeImpl$reset$1.o = 1;
                    if (this.m.a(pressGestureScopeImpl$reset$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                this.k = false;
                this.l = false;
                return Unit.a;
            }
        }
        pressGestureScopeImpl$reset$1 = new PressGestureScopeImpl$reset$1(this, continuationImpl);
        Object obj2 = pressGestureScopeImpl$reset$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = pressGestureScopeImpl$reset$1.o;
        if (i == 0) {
        }
        this.k = false;
        this.l = false;
        return Unit.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(ContinuationImpl continuationImpl) {
        PressGestureScopeImpl$tryAwaitRelease$1 pressGestureScopeImpl$tryAwaitRelease$1;
        int i;
        if (continuationImpl instanceof PressGestureScopeImpl$tryAwaitRelease$1) {
            pressGestureScopeImpl$tryAwaitRelease$1 = (PressGestureScopeImpl$tryAwaitRelease$1) continuationImpl;
            int i2 = pressGestureScopeImpl$tryAwaitRelease$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pressGestureScopeImpl$tryAwaitRelease$1.o = i2 - Integer.MIN_VALUE;
                Object obj = pressGestureScopeImpl$tryAwaitRelease$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = pressGestureScopeImpl$tryAwaitRelease$1.o;
                MutexImpl mutexImpl = this.m;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    if (!this.k && !this.l) {
                        pressGestureScopeImpl$tryAwaitRelease$1.o = 1;
                        if (mutexImpl.a(pressGestureScopeImpl$tryAwaitRelease$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return Boolean.valueOf(this.k);
                }
                mutexImpl.h(null);
                return Boolean.valueOf(this.k);
            }
        }
        pressGestureScopeImpl$tryAwaitRelease$1 = new PressGestureScopeImpl$tryAwaitRelease$1(this, continuationImpl);
        Object obj2 = pressGestureScopeImpl$tryAwaitRelease$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = pressGestureScopeImpl$tryAwaitRelease$1.o;
        MutexImpl mutexImpl2 = this.m;
        if (i == 0) {
        }
        mutexImpl2.h(null);
        return Boolean.valueOf(this.k);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float e0() {
        return this.j.e0();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.j.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float i0(float f) {
        return this.j.i0(f);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final long x(float f) {
        return this.j.x(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long y(long j) {
        return this.j.y(j);
    }

    @Override // androidx.compose.ui.unit.Density
    public final int y0(float f) {
        return this.j.y0(f);
    }
}
