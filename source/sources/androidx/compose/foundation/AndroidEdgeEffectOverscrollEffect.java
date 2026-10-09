package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import android.widget.EdgeEffect;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import defpackage.ma;
import defpackage.u2;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidEdgeEffectOverscrollEffect implements OverscrollEffect {
    public final Density a;
    public long b = 9205357640488583168L;
    public final EdgeEffectWrapper c;
    public final MutableState d;
    public final boolean e;
    public boolean f;
    public long g;
    public long h;
    public final DelegatingNode i;

    public AndroidEdgeEffectOverscrollEffect(Context context, Density density, long j, PaddingValues paddingValues) {
        DelegatingNode glowOverscrollNode;
        this.a = density;
        EdgeEffectWrapper edgeEffectWrapper = new EdgeEffectWrapper(context, ColorKt.f(j));
        this.c = edgeEffectWrapper;
        this.d = SnapshotStateKt.f(Unit.a, SnapshotStateKt.h());
        this.e = true;
        this.g = 0L;
        this.h = -1L;
        PointerInputEventHandler pointerInputEventHandler = new PointerInputEventHandler() { // from class: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1

            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
            @DebugMetadata(c = "androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1", f = "AndroidOverscroll.android.kt", l = {788, 792}, m = "invokeSuspend", v = 1)
            /* renamed from: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1, reason: invalid class name */
            /* loaded from: classes.dex */
            final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
                public int l;
                public /* synthetic */ Object m;
                public final /* synthetic */ AndroidEdgeEffectOverscrollEffect n;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass1(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, Continuation continuation) {
                    super(2, continuation);
                    this.n = androidEdgeEffectOverscrollEffect;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    return ((AnonymousClass1) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation s(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.n, continuation);
                    anonymousClass1.m = obj;
                    return anonymousClass1;
                }

                /* JADX WARN: Code restructure failed: missing block: B:29:0x004a, code lost:
                
                    if (r13 != r0) goto L17;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:30:0x004c, code lost:
                
                    return r0;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:41:0x0035, code lost:
                
                    if (r13 == r0) goto L16;
                 */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x004a -> B:6:0x004d). Please report as a decompilation issue!!! */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object v(Object obj) {
                    AwaitPointerEventScope awaitPointerEventScope;
                    Object obj2;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    int i = this.l;
                    AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.n;
                    if (i != 0) {
                        if (i != 1) {
                            if (i == 2) {
                                awaitPointerEventScope = (AwaitPointerEventScope) this.m;
                                ResultKt.b(obj);
                                List list = ((PointerEvent) obj).a;
                                ArrayList arrayList = new ArrayList(list.size());
                                int size = list.size();
                                int i2 = 0;
                                for (int i3 = 0; i3 < size; i3++) {
                                    Object obj3 = list.get(i3);
                                    if (((PointerInputChange) obj3).d) {
                                        arrayList.add(obj3);
                                    }
                                }
                                int size2 = arrayList.size();
                                while (true) {
                                    if (i2 < size2) {
                                        obj2 = arrayList.get(i2);
                                        if (PointerId.a(((PointerInputChange) obj2).a, androidEdgeEffectOverscrollEffect.h)) {
                                            break;
                                        }
                                        i2++;
                                    } else {
                                        obj2 = null;
                                        break;
                                    }
                                }
                                PointerInputChange pointerInputChange = (PointerInputChange) obj2;
                                if (pointerInputChange == null) {
                                    pointerInputChange = (PointerInputChange) CollectionsKt.t(arrayList);
                                }
                                if (pointerInputChange != null) {
                                    androidEdgeEffectOverscrollEffect.h = pointerInputChange.a;
                                    androidEdgeEffectOverscrollEffect.b = pointerInputChange.c;
                                }
                                if (arrayList.isEmpty()) {
                                    androidEdgeEffectOverscrollEffect.h = -1L;
                                    return Unit.a;
                                }
                                this.m = awaitPointerEventScope;
                                this.l = 2;
                                obj = ((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) awaitPointerEventScope).q(PointerEventPass.k, this);
                            } else {
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                        } else {
                            awaitPointerEventScope = (AwaitPointerEventScope) this.m;
                            ResultKt.b(obj);
                        }
                    } else {
                        ResultKt.b(obj);
                        awaitPointerEventScope = (AwaitPointerEventScope) this.m;
                        this.m = awaitPointerEventScope;
                        this.l = 1;
                        obj = TapGestureDetectorKt.b(awaitPointerEventScope, this, 2);
                    }
                    PointerInputChange pointerInputChange2 = (PointerInputChange) obj;
                    androidEdgeEffectOverscrollEffect.h = pointerInputChange2.a;
                    androidEdgeEffectOverscrollEffect.b = pointerInputChange2.c;
                    this.m = awaitPointerEventScope;
                    this.l = 2;
                    obj = ((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) awaitPointerEventScope).q(PointerEventPass.k, this);
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                Object b = ForEachGestureKt.b(pointerInputScope, new AnonymousClass1(AndroidEdgeEffectOverscrollEffect.this, null), continuation);
                if (b == CoroutineSingletons.j) {
                    return b;
                }
                return Unit.a;
            }
        };
        PointerEvent pointerEvent = SuspendingPointerInputFilterKt.a;
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = new SuspendingPointerInputModifierNodeImpl(null, null, null, pointerInputEventHandler);
        if (Build.VERSION.SDK_INT >= 31) {
            glowOverscrollNode = new StretchOverscrollNode(suspendingPointerInputModifierNodeImpl, this, edgeEffectWrapper);
        } else {
            glowOverscrollNode = new GlowOverscrollNode(suspendingPointerInputModifierNodeImpl, this, edgeEffectWrapper, paddingValues);
        }
        this.i = glowOverscrollNode;
    }

    public final void a() {
        boolean z;
        EdgeEffectWrapper edgeEffectWrapper = this.c;
        EdgeEffect edgeEffect = edgeEffectWrapper.d;
        boolean z2 = true;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = !edgeEffect.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = edgeEffectWrapper.e;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            if (edgeEffect2.isFinished() && !z) {
                z = false;
            } else {
                z = true;
            }
        }
        EdgeEffect edgeEffect3 = edgeEffectWrapper.f;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            if (edgeEffect3.isFinished() && !z) {
                z = false;
            } else {
                z = true;
            }
        }
        EdgeEffect edgeEffect4 = edgeEffectWrapper.g;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            if (edgeEffect4.isFinished() && !z) {
                z2 = false;
            }
            z = z2;
        }
        if (z) {
            e();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0129, code lost:
    
        if (r4 == r6) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(long j, Function2 function2, ContinuationImpl continuationImpl) {
        AndroidEdgeEffectOverscrollEffect$applyToFling$1 androidEdgeEffectOverscrollEffect$applyToFling$1;
        int i;
        float f;
        float f2;
        long d;
        long d2;
        if (continuationImpl instanceof AndroidEdgeEffectOverscrollEffect$applyToFling$1) {
            androidEdgeEffectOverscrollEffect$applyToFling$1 = (AndroidEdgeEffectOverscrollEffect$applyToFling$1) continuationImpl;
            int i2 = androidEdgeEffectOverscrollEffect$applyToFling$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                androidEdgeEffectOverscrollEffect$applyToFling$1.p = i2 - Integer.MIN_VALUE;
                Object obj = androidEdgeEffectOverscrollEffect$applyToFling$1.n;
                Object obj2 = CoroutineSingletons.j;
                i = androidEdgeEffectOverscrollEffect$applyToFling$1.p;
                Unit unit = Unit.a;
                EdgeEffectWrapper edgeEffectWrapper = this.c;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            d = androidEdgeEffectOverscrollEffect$applyToFling$1.m;
                            ResultKt.b(obj);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        return unit;
                    }
                } else {
                    ResultKt.b(obj);
                    if (Size.e(this.g)) {
                        Object velocity = new Velocity(j);
                        androidEdgeEffectOverscrollEffect$applyToFling$1.p = 1;
                        if (function2.n(velocity, androidEdgeEffectOverscrollEffect$applyToFling$1) != obj2) {
                            return unit;
                        }
                    } else {
                        boolean g = EdgeEffectWrapper.g(edgeEffectWrapper.f);
                        Density density = this.a;
                        if (g && Velocity.b(j) < 0.0f) {
                            f = EdgeEffectCompat.a(edgeEffectWrapper.c(), Velocity.b(j), Float.intBitsToFloat((int) (this.g >> 32)), density);
                        } else if (EdgeEffectWrapper.g(edgeEffectWrapper.g) && Velocity.b(j) > 0.0f) {
                            f = -EdgeEffectCompat.a(edgeEffectWrapper.d(), -Velocity.b(j), Float.intBitsToFloat((int) (this.g >> 32)), density);
                        } else {
                            f = 0.0f;
                        }
                        if (EdgeEffectWrapper.g(edgeEffectWrapper.d) && Velocity.c(j) < 0.0f) {
                            f2 = EdgeEffectCompat.a(edgeEffectWrapper.e(), Velocity.c(j), Float.intBitsToFloat((int) (this.g & 4294967295L)), density);
                        } else if (EdgeEffectWrapper.g(edgeEffectWrapper.e) && Velocity.c(j) > 0.0f) {
                            f2 = -EdgeEffectCompat.a(edgeEffectWrapper.b(), -Velocity.c(j), Float.intBitsToFloat((int) (this.g & 4294967295L)), density);
                        } else {
                            f2 = 0.0f;
                        }
                        long a = VelocityKt.a(f, f2);
                        if (a != 0) {
                            e();
                        }
                        d = Velocity.d(j, a);
                        Object velocity2 = new Velocity(d);
                        androidEdgeEffectOverscrollEffect$applyToFling$1.m = d;
                        androidEdgeEffectOverscrollEffect$applyToFling$1.p = 2;
                        obj = function2.n(velocity2, androidEdgeEffectOverscrollEffect$applyToFling$1);
                    }
                    return obj2;
                }
                d2 = Velocity.d(d, ((Velocity) obj).a);
                this.f = false;
                if (Velocity.b(d2) <= 0.0f) {
                    EdgeEffectCompat.c(edgeEffectWrapper.c(), MathKt.b(Velocity.b(d2)));
                } else if (Velocity.b(d2) < 0.0f) {
                    EdgeEffectCompat.c(edgeEffectWrapper.d(), -MathKt.b(Velocity.b(d2)));
                }
                if (Velocity.c(d2) <= 0.0f) {
                    EdgeEffectCompat.c(edgeEffectWrapper.e(), MathKt.b(Velocity.c(d2)));
                } else if (Velocity.c(d2) < 0.0f) {
                    EdgeEffectCompat.c(edgeEffectWrapper.b(), -MathKt.b(Velocity.c(d2)));
                }
                a();
                return unit;
            }
        }
        androidEdgeEffectOverscrollEffect$applyToFling$1 = new AndroidEdgeEffectOverscrollEffect$applyToFling$1(this, continuationImpl);
        Object obj3 = androidEdgeEffectOverscrollEffect$applyToFling$1.n;
        Object obj22 = CoroutineSingletons.j;
        i = androidEdgeEffectOverscrollEffect$applyToFling$1.p;
        Unit unit2 = Unit.a;
        EdgeEffectWrapper edgeEffectWrapper2 = this.c;
        if (i == 0) {
        }
        d2 = Velocity.d(d, ((Velocity) obj3).a);
        this.f = false;
        if (Velocity.b(d2) <= 0.0f) {
        }
        if (Velocity.c(d2) <= 0.0f) {
        }
        a();
        return unit2;
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0231 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0222  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long c(long j, int i, ma maVar) {
        float f;
        long j2;
        float f2;
        int i2;
        float i3;
        float intBitsToFloat;
        long floatToRawIntBits;
        long e;
        boolean z;
        boolean z2;
        long j3;
        float f3;
        float f4;
        boolean z3;
        int i4;
        boolean z4;
        if (Size.e(this.g)) {
            return ((Offset) maVar.b(new Offset(j))).a;
        }
        boolean z5 = this.f;
        boolean z6 = true;
        EdgeEffectWrapper edgeEffectWrapper = this.c;
        if (!z5) {
            if (EdgeEffectWrapper.g(edgeEffectWrapper.f)) {
                h(0L);
            }
            if (EdgeEffectWrapper.g(edgeEffectWrapper.g)) {
                i(0L);
            }
            if (EdgeEffectWrapper.g(edgeEffectWrapper.d)) {
                j(0L);
            }
            if (EdgeEffectWrapper.g(edgeEffectWrapper.e)) {
                g(0L);
            }
            this.f = true;
        }
        int i5 = AndroidOverscroll_androidKt.a;
        if (i == 2) {
            f = 4.0f;
        } else {
            f = 1.0f;
        }
        long g = Offset.g(j, f);
        int i6 = (int) (j & 4294967295L);
        if (Float.intBitsToFloat(i6) == 0.0f) {
            j2 = 4294967295L;
        } else {
            if (EdgeEffectWrapper.g(edgeEffectWrapper.d) && Float.intBitsToFloat(i6) < 0.0f) {
                float j4 = j(g);
                j2 = 4294967295L;
                if (!EdgeEffectWrapper.g(edgeEffectWrapper.d)) {
                    edgeEffectWrapper.e().finish();
                }
                if (j4 == Float.intBitsToFloat((int) (g & 4294967295L))) {
                    f2 = Float.intBitsToFloat(i6);
                } else {
                    f2 = j4 / f;
                }
            } else {
                j2 = 4294967295L;
                if (EdgeEffectWrapper.g(edgeEffectWrapper.e) && Float.intBitsToFloat(i6) > 0.0f) {
                    float g2 = g(g);
                    if (!EdgeEffectWrapper.g(edgeEffectWrapper.e)) {
                        edgeEffectWrapper.b().finish();
                    }
                    if (g2 == Float.intBitsToFloat((int) (g & 4294967295L))) {
                        f2 = Float.intBitsToFloat(i6);
                    } else {
                        f2 = g2 / f;
                    }
                }
            }
            i2 = (int) (j >> 32);
            if (Float.intBitsToFloat(i2) != 0.0f) {
                if (EdgeEffectWrapper.g(edgeEffectWrapper.f) && Float.intBitsToFloat(i2) < 0.0f) {
                    i3 = h(g);
                    if (!EdgeEffectWrapper.g(edgeEffectWrapper.f)) {
                        edgeEffectWrapper.c().finish();
                    }
                    if (i3 == Float.intBitsToFloat((int) (g >> 32))) {
                        intBitsToFloat = Float.intBitsToFloat(i2);
                    }
                    intBitsToFloat = i3 / f;
                } else if (EdgeEffectWrapper.g(edgeEffectWrapper.g) && Float.intBitsToFloat(i2) > 0.0f) {
                    i3 = i(g);
                    if (!EdgeEffectWrapper.g(edgeEffectWrapper.g)) {
                        edgeEffectWrapper.d().finish();
                    }
                    if (i3 == Float.intBitsToFloat((int) (g >> 32))) {
                        intBitsToFloat = Float.intBitsToFloat(i2);
                    }
                    intBitsToFloat = i3 / f;
                }
                floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(f2) & j2);
                if (!Offset.c(floatToRawIntBits, 0L)) {
                    e();
                }
                e = Offset.e(j, floatToRawIntBits);
                long j5 = ((Offset) maVar.b(new Offset(e))).a;
                long e2 = Offset.e(e, j5);
                if ((Float.intBitsToFloat((int) (e >> 32)) == 0.0f || Float.intBitsToFloat((int) (e & j2)) != 0.0f) && ((Float.intBitsToFloat((int) (j5 >> 32)) != 0.0f || Float.intBitsToFloat((int) (j5 & j2)) != 0.0f) && (EdgeEffectWrapper.g(edgeEffectWrapper.f) || EdgeEffectWrapper.g(edgeEffectWrapper.d) || EdgeEffectWrapper.g(edgeEffectWrapper.g) || EdgeEffectWrapper.g(edgeEffectWrapper.e)))) {
                    a();
                }
                if (i == 1) {
                    int i7 = (int) (e2 >> 32);
                    if (Float.intBitsToFloat(i7) > 0.5f) {
                        j3 = e2;
                        h(j3);
                    } else {
                        j3 = e2;
                        if (Float.intBitsToFloat(i7) < -0.5f) {
                            i(j3);
                        } else {
                            f3 = 0.5f;
                            f4 = -0.5f;
                            z3 = false;
                            i4 = (int) (j3 & j2);
                            if (Float.intBitsToFloat(i4) <= f3) {
                                j(j3);
                            } else if (Float.intBitsToFloat(i4) < f4) {
                                g(j3);
                            } else {
                                z4 = false;
                                if (!z3 || z4) {
                                    z = true;
                                    if (!Offset.c(e, 0L)) {
                                        if (EdgeEffectWrapper.f(edgeEffectWrapper.f) && Float.intBitsToFloat(i2) < 0.0f) {
                                            EdgeEffectCompat.e(edgeEffectWrapper.c(), Float.intBitsToFloat(i2));
                                            z2 = EdgeEffectWrapper.f(edgeEffectWrapper.f);
                                        } else {
                                            z2 = false;
                                        }
                                        if (EdgeEffectWrapper.f(edgeEffectWrapper.g) && Float.intBitsToFloat(i2) > 0.0f) {
                                            EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i2));
                                            if (!z2 && !EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                                                z2 = false;
                                            } else {
                                                z2 = true;
                                            }
                                        }
                                        if (EdgeEffectWrapper.f(edgeEffectWrapper.d) && Float.intBitsToFloat(i6) < 0.0f) {
                                            EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i6));
                                            if (!z2 && !EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                                                z2 = false;
                                            } else {
                                                z2 = true;
                                            }
                                        }
                                        if (EdgeEffectWrapper.f(edgeEffectWrapper.e) && Float.intBitsToFloat(i6) > 0.0f) {
                                            EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i6));
                                            if (!z2 && !EdgeEffectWrapper.f(edgeEffectWrapper.e)) {
                                                z2 = false;
                                            } else {
                                                z2 = true;
                                            }
                                        }
                                        if (!z2 && !z) {
                                            z6 = false;
                                        }
                                        z = z6;
                                    }
                                    if (z) {
                                        e();
                                    }
                                    return Offset.f(floatToRawIntBits, j5);
                                }
                            }
                            z4 = true;
                            if (!z3) {
                            }
                            z = true;
                            if (!Offset.c(e, 0L)) {
                            }
                            if (z) {
                            }
                            return Offset.f(floatToRawIntBits, j5);
                        }
                    }
                    z3 = true;
                    f3 = 0.5f;
                    f4 = -0.5f;
                    i4 = (int) (j3 & j2);
                    if (Float.intBitsToFloat(i4) <= f3) {
                    }
                    z4 = true;
                    if (!z3) {
                    }
                    z = true;
                    if (!Offset.c(e, 0L)) {
                    }
                    if (z) {
                    }
                    return Offset.f(floatToRawIntBits, j5);
                }
                z = false;
                if (!Offset.c(e, 0L)) {
                }
                if (z) {
                }
                return Offset.f(floatToRawIntBits, j5);
            }
            intBitsToFloat = 0.0f;
            floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(f2) & j2);
            if (!Offset.c(floatToRawIntBits, 0L)) {
            }
            e = Offset.e(j, floatToRawIntBits);
            long j52 = ((Offset) maVar.b(new Offset(e))).a;
            long e22 = Offset.e(e, j52);
            if (Float.intBitsToFloat((int) (e >> 32)) == 0.0f) {
            }
            a();
            if (i == 1) {
            }
            z = false;
            if (!Offset.c(e, 0L)) {
            }
            if (z) {
            }
            return Offset.f(floatToRawIntBits, j52);
        }
        f2 = 0.0f;
        i2 = (int) (j >> 32);
        if (Float.intBitsToFloat(i2) != 0.0f) {
        }
        intBitsToFloat = 0.0f;
        floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(f2) & j2);
        if (!Offset.c(floatToRawIntBits, 0L)) {
        }
        e = Offset.e(j, floatToRawIntBits);
        long j522 = ((Offset) maVar.b(new Offset(e))).a;
        long e222 = Offset.e(e, j522);
        if (Float.intBitsToFloat((int) (e >> 32)) == 0.0f) {
        }
        a();
        if (i == 1) {
        }
        z = false;
        if (!Offset.c(e, 0L)) {
        }
        if (z) {
        }
        return Offset.f(floatToRawIntBits, j522);
    }

    public final long d() {
        long j = this.b;
        if ((9223372034707292159L & j) == 9205357640488583168L) {
            j = SizeKt.a(this.g);
        }
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) / Float.intBitsToFloat((int) (this.g >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) / Float.intBitsToFloat((int) (this.g & 4294967295L));
        return (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
    }

    public final void e() {
        if (this.e) {
            ((SnapshotMutableStateImpl) this.d).setValue(Unit.a);
        }
    }

    public final boolean f() {
        EdgeEffectWrapper edgeEffectWrapper = this.c;
        EdgeEffect edgeEffect = edgeEffectWrapper.d;
        if (edgeEffect == null || EdgeEffectCompat.b(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = edgeEffectWrapper.e;
            if (edgeEffect2 == null || EdgeEffectCompat.b(edgeEffect2) == 0.0f) {
                EdgeEffect edgeEffect3 = edgeEffectWrapper.f;
                if (edgeEffect3 == null || EdgeEffectCompat.b(edgeEffect3) == 0.0f) {
                    EdgeEffect edgeEffect4 = edgeEffectWrapper.g;
                    if (edgeEffect4 != null && EdgeEffectCompat.b(edgeEffect4) != 0.0f) {
                        return true;
                    }
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public final float g(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (d() >> 32));
        int i = (int) (j & 4294967295L);
        float intBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.g & 4294967295L));
        EdgeEffect b = this.c.b();
        float intBitsToFloat3 = Float.intBitsToFloat((int) (this.g & 4294967295L)) * (-EdgeEffectCompat.d(b, -intBitsToFloat2, 1.0f - intBitsToFloat));
        if (EdgeEffectCompat.b(b) == 0.0f) {
            return intBitsToFloat3;
        }
        return Float.intBitsToFloat(i);
    }

    public final float h(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (d() & 4294967295L));
        int i = (int) (j >> 32);
        float intBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.g >> 32));
        EdgeEffect c = this.c.c();
        float intBitsToFloat3 = Float.intBitsToFloat((int) (this.g >> 32)) * EdgeEffectCompat.d(c, intBitsToFloat2, 1.0f - intBitsToFloat);
        if (EdgeEffectCompat.b(c) == 0.0f) {
            return intBitsToFloat3;
        }
        return Float.intBitsToFloat(i);
    }

    public final float i(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (d() & 4294967295L));
        int i = (int) (j >> 32);
        float intBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.g >> 32));
        EdgeEffect d = this.c.d();
        float intBitsToFloat3 = Float.intBitsToFloat((int) (this.g >> 32)) * (-EdgeEffectCompat.d(d, -intBitsToFloat2, intBitsToFloat));
        if (EdgeEffectCompat.b(d) == 0.0f) {
            return intBitsToFloat3;
        }
        return Float.intBitsToFloat(i);
    }

    public final float j(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (d() >> 32));
        int i = (int) (j & 4294967295L);
        float intBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.g & 4294967295L));
        EdgeEffect e = this.c.e();
        float intBitsToFloat3 = Float.intBitsToFloat((int) (this.g & 4294967295L)) * EdgeEffectCompat.d(e, intBitsToFloat2, intBitsToFloat);
        if (EdgeEffectCompat.b(e) == 0.0f) {
            return intBitsToFloat3;
        }
        return Float.intBitsToFloat(i);
    }

    public final void k(long j) {
        boolean a = Size.a(this.g, 0L);
        boolean a2 = Size.a(j, this.g);
        this.g = j;
        if (!a2) {
            long b = (MathKt.b(Float.intBitsToFloat((int) (j & 4294967295L))) & 4294967295L) | (MathKt.b(Float.intBitsToFloat((int) (j >> 32))) << 32);
            EdgeEffectWrapper edgeEffectWrapper = this.c;
            edgeEffectWrapper.c = b;
            EdgeEffect edgeEffect = edgeEffectWrapper.d;
            if (edgeEffect != null) {
                edgeEffect.setSize((int) (b >> 32), (int) (b & 4294967295L));
            }
            EdgeEffect edgeEffect2 = edgeEffectWrapper.e;
            if (edgeEffect2 != null) {
                edgeEffect2.setSize((int) (b >> 32), (int) (b & 4294967295L));
            }
            EdgeEffect edgeEffect3 = edgeEffectWrapper.f;
            if (edgeEffect3 != null) {
                edgeEffect3.setSize((int) (b & 4294967295L), (int) (b >> 32));
            }
            EdgeEffect edgeEffect4 = edgeEffectWrapper.g;
            if (edgeEffect4 != null) {
                edgeEffect4.setSize((int) (b & 4294967295L), (int) (b >> 32));
            }
            EdgeEffect edgeEffect5 = edgeEffectWrapper.h;
            if (edgeEffect5 != null) {
                edgeEffect5.setSize((int) (b >> 32), (int) (b & 4294967295L));
            }
            EdgeEffect edgeEffect6 = edgeEffectWrapper.i;
            if (edgeEffect6 != null) {
                edgeEffect6.setSize((int) (b >> 32), (int) (b & 4294967295L));
            }
            EdgeEffect edgeEffect7 = edgeEffectWrapper.j;
            if (edgeEffect7 != null) {
                edgeEffect7.setSize((int) (b & 4294967295L), (int) (b >> 32));
            }
            EdgeEffect edgeEffect8 = edgeEffectWrapper.k;
            if (edgeEffect8 != null) {
                edgeEffect8.setSize((int) (4294967295L & b), (int) (b >> 32));
            }
        }
        if (!a && !a2) {
            a();
        }
    }
}
