package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.s2;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.math.MathKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic$dispatchMouseWheelScroll$3", f = "MouseWheelScrollingLogic.kt", l = {228, 241, 261}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class MouseWheelScrollingLogic$dispatchMouseWheelScroll$3 extends SuspendLambda implements Function2<NestedScrollScope, Continuation<? super Unit>, Object> {
    public Ref$BooleanRef n;
    public Ref$BooleanRef o;
    public int p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ Ref$FloatRef s;
    public final /* synthetic */ Ref$ObjectRef t;
    public final /* synthetic */ Ref$ObjectRef u;
    public final /* synthetic */ float v;
    public final /* synthetic */ MouseWheelScrollingLogic w;
    public final /* synthetic */ float x;
    public final /* synthetic */ ScrollingLogic y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MouseWheelScrollingLogic$dispatchMouseWheelScroll$3(Ref$FloatRef ref$FloatRef, Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2, float f, MouseWheelScrollingLogic mouseWheelScrollingLogic, float f2, ScrollingLogic scrollingLogic, Continuation continuation) {
        super(2, continuation);
        this.s = ref$FloatRef;
        this.t = ref$ObjectRef;
        this.u = ref$ObjectRef2;
        this.v = f;
        this.w = mouseWheelScrollingLogic;
        this.x = f2;
        this.y = scrollingLogic;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((MouseWheelScrollingLogic$dispatchMouseWheelScroll$3) s((NestedScrollScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        MouseWheelScrollingLogic$dispatchMouseWheelScroll$3 mouseWheelScrollingLogic$dispatchMouseWheelScroll$3 = new MouseWheelScrollingLogic$dispatchMouseWheelScroll$3(this.s, this.t, this.u, this.v, this.w, this.x, this.y, continuation);
        mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.r = obj;
        return mouseWheelScrollingLogic$dispatchMouseWheelScroll$3;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01d0 A[RETURN] */
    /* JADX WARN: Type inference failed for: r3v0, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v26, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x018b -> B:7:0x018d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x019e -> B:9:0x0076). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        NestedScrollScope nestedScrollScope;
        Ref$BooleanRef ref$BooleanRef;
        Ref$ObjectRef ref$ObjectRef;
        Ref$FloatRef ref$FloatRef;
        int i;
        Ref$ObjectRef ref$ObjectRef2;
        Ref$BooleanRef ref$BooleanRef2;
        NestedScrollScope nestedScrollScope2;
        MouseWheelScrollingLogic mouseWheelScrollingLogic;
        int i2;
        int i3;
        MouseWheelScrollingLogic mouseWheelScrollingLogic2;
        Ref$FloatRef ref$FloatRef2;
        Ref$ObjectRef ref$ObjectRef3;
        NestedScrollScope nestedScrollScope3;
        boolean z;
        int i4;
        MouseWheelScrollingLogic$dispatchMouseWheelScroll$3 mouseWheelScrollingLogic$dispatchMouseWheelScroll$3 = this;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i5 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.q;
        Ref$ObjectRef ref$ObjectRef4 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.u;
        MouseWheelScrollingLogic mouseWheelScrollingLogic3 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.w;
        Ref$FloatRef ref$FloatRef3 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.s;
        int i6 = 3;
        int i7 = 2;
        int i8 = 1;
        Ref$ObjectRef ref$ObjectRef5 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.t;
        if (i5 != 0) {
            if (i5 != 1) {
                if (i5 != 2) {
                    if (i5 == 3) {
                        Ref$BooleanRef ref$BooleanRef3 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.o;
                        Ref$BooleanRef ref$BooleanRef4 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.n;
                        nestedScrollScope3 = (NestedScrollScope) mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.r;
                        ResultKt.b(obj);
                        ref$BooleanRef2 = ref$BooleanRef3;
                        mouseWheelScrollingLogic2 = mouseWheelScrollingLogic3;
                        ref$BooleanRef = ref$BooleanRef4;
                        ref$FloatRef2 = ref$FloatRef3;
                        i = 2;
                        i2 = 1;
                        ref$ObjectRef3 = ref$ObjectRef5;
                        Object d = obj;
                        ref$BooleanRef2.j = ((Boolean) d).booleanValue();
                        ref$ObjectRef5 = ref$ObjectRef3;
                        i8 = i2;
                        i7 = i;
                        ref$FloatRef3 = ref$FloatRef2;
                        mouseWheelScrollingLogic3 = mouseWheelScrollingLogic2;
                        nestedScrollScope = nestedScrollScope3;
                        z = ref$BooleanRef.j;
                        Unit unit = Unit.a;
                        if (!z) {
                            ref$BooleanRef.j = false;
                            float floatValue = ref$FloatRef3.j - ((Number) ((SnapshotMutableStateImpl) ((AnimationState) ref$ObjectRef5.j).k).getValue()).floatValue();
                            if (!((MouseWheelScrollingLogic.MouseWheelScrollDelta) ref$ObjectRef4.j).c) {
                                float abs = Math.abs(floatValue);
                                float f = mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.v;
                                if (abs >= f) {
                                    float signum = Math.signum(floatValue) * f;
                                    mouseWheelScrollingLogic3.e(nestedScrollScope, signum);
                                    AnimationState animationState = (AnimationState) ref$ObjectRef5.j;
                                    AnimationState c = AnimationStateKt.c(animationState, ((Number) ((SnapshotMutableStateImpl) animationState.k).getValue()).floatValue() + signum, 0.0f, 30);
                                    ref$ObjectRef5.j = c;
                                    int b = MathKt.b(Math.abs(ref$FloatRef3.j - ((Number) ((SnapshotMutableStateImpl) c.k).getValue()).floatValue()) / mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.x);
                                    if (b > 100) {
                                        i4 = 100;
                                    } else {
                                        i4 = b;
                                    }
                                    AnimationState animationState2 = (AnimationState) ref$ObjectRef5.j;
                                    float f2 = ref$FloatRef3.j;
                                    Ref$ObjectRef ref$ObjectRef6 = ref$ObjectRef4;
                                    c cVar = new c(mouseWheelScrollingLogic3, ref$ObjectRef6, ref$FloatRef3, mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.y, ref$BooleanRef);
                                    ref$ObjectRef2 = ref$ObjectRef6;
                                    ref$FloatRef = ref$FloatRef3;
                                    mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.r = nestedScrollScope;
                                    mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.n = ref$BooleanRef;
                                    mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.o = null;
                                    mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.p = i4;
                                    mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.q = i7;
                                    ?? obj2 = new Object();
                                    obj2.j = ((Number) ((SnapshotMutableStateImpl) animationState2.k).getValue()).floatValue();
                                    int i9 = i4;
                                    i = i7;
                                    ref$ObjectRef = ref$ObjectRef5;
                                    nestedScrollScope2 = nestedScrollScope;
                                    mouseWheelScrollingLogic = mouseWheelScrollingLogic3;
                                    i2 = 1;
                                    i6 = 3;
                                    Object e = SuspendAnimationKt.e(animationState2, new Float(f2), AnimationSpecKt.c(i4, 0, EasingKt.c, i7), true, new s2((Object) obj2, mouseWheelScrollingLogic, nestedScrollScope2, cVar, 7), mouseWheelScrollingLogic$dispatchMouseWheelScroll$3);
                                    if (e != CoroutineSingletons.j) {
                                        e = unit;
                                    }
                                    if (e != coroutineSingletons) {
                                        ref$BooleanRef2 = ref$BooleanRef;
                                        i3 = i9;
                                        if (ref$BooleanRef2.j) {
                                            long j = 50 - i3;
                                            mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.r = nestedScrollScope2;
                                            mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.n = ref$BooleanRef2;
                                            mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.o = ref$BooleanRef2;
                                            mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.q = i6;
                                            mouseWheelScrollingLogic2 = mouseWheelScrollingLogic;
                                            ref$ObjectRef4 = ref$ObjectRef2;
                                            ref$FloatRef2 = ref$FloatRef;
                                            ref$ObjectRef3 = ref$ObjectRef;
                                            d = MouseWheelScrollingLogic.d(mouseWheelScrollingLogic2, ref$ObjectRef4, ref$FloatRef2, mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.y, ref$ObjectRef3, j, mouseWheelScrollingLogic$dispatchMouseWheelScroll$3);
                                            if (d != coroutineSingletons) {
                                                nestedScrollScope3 = nestedScrollScope2;
                                                ref$BooleanRef = ref$BooleanRef2;
                                                ref$BooleanRef2.j = ((Boolean) d).booleanValue();
                                                ref$ObjectRef5 = ref$ObjectRef3;
                                                i8 = i2;
                                                i7 = i;
                                                ref$FloatRef3 = ref$FloatRef2;
                                                mouseWheelScrollingLogic3 = mouseWheelScrollingLogic2;
                                                nestedScrollScope = nestedScrollScope3;
                                                z = ref$BooleanRef.j;
                                                Unit unit2 = Unit.a;
                                                if (!z) {
                                                    return unit2;
                                                }
                                            }
                                        } else {
                                            mouseWheelScrollingLogic3 = mouseWheelScrollingLogic;
                                            nestedScrollScope = nestedScrollScope2;
                                            ref$BooleanRef = ref$BooleanRef2;
                                            ref$ObjectRef4 = ref$ObjectRef2;
                                            ref$FloatRef3 = ref$FloatRef;
                                            ref$ObjectRef5 = ref$ObjectRef;
                                            i8 = i2;
                                            i7 = i;
                                            z = ref$BooleanRef.j;
                                            Unit unit22 = Unit.a;
                                            if (!z) {
                                            }
                                        }
                                    }
                                    return coroutineSingletons;
                                }
                            }
                            Ref$ObjectRef ref$ObjectRef7 = ref$ObjectRef5;
                            NestedScrollScope nestedScrollScope4 = nestedScrollScope;
                            mouseWheelScrollingLogic2 = mouseWheelScrollingLogic3;
                            ref$FloatRef2 = ref$FloatRef3;
                            ref$ObjectRef3 = ref$ObjectRef7;
                            i = i7;
                            i2 = i8;
                            mouseWheelScrollingLogic2.e(nestedScrollScope4, floatValue);
                            mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.r = nestedScrollScope4;
                            mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.n = ref$BooleanRef;
                            mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.o = ref$BooleanRef;
                            mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.q = i2;
                            Ref$BooleanRef ref$BooleanRef5 = ref$BooleanRef;
                            Object d2 = MouseWheelScrollingLogic.d(mouseWheelScrollingLogic2, ref$ObjectRef4, ref$FloatRef2, mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.y, ref$ObjectRef3, 50L, mouseWheelScrollingLogic$dispatchMouseWheelScroll$3);
                            if (d2 != coroutineSingletons) {
                                nestedScrollScope3 = nestedScrollScope4;
                                ref$BooleanRef = ref$BooleanRef5;
                                ref$BooleanRef5.j = ((Boolean) d2).booleanValue();
                                mouseWheelScrollingLogic$dispatchMouseWheelScroll$3 = this;
                                ref$ObjectRef5 = ref$ObjectRef3;
                                i8 = i2;
                                i7 = i;
                                ref$FloatRef3 = ref$FloatRef2;
                                mouseWheelScrollingLogic3 = mouseWheelScrollingLogic2;
                                nestedScrollScope = nestedScrollScope3;
                                z = ref$BooleanRef.j;
                                Unit unit222 = Unit.a;
                                if (!z) {
                                }
                            }
                            return coroutineSingletons;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    i3 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.p;
                    Ref$BooleanRef ref$BooleanRef6 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.n;
                    NestedScrollScope nestedScrollScope5 = (NestedScrollScope) mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.r;
                    ResultKt.b(obj);
                    ref$ObjectRef2 = ref$ObjectRef4;
                    ref$BooleanRef2 = ref$BooleanRef6;
                    ref$FloatRef = ref$FloatRef3;
                    i = 2;
                    i2 = 1;
                    ref$ObjectRef = ref$ObjectRef5;
                    mouseWheelScrollingLogic = mouseWheelScrollingLogic3;
                    nestedScrollScope2 = nestedScrollScope5;
                    if (ref$BooleanRef2.j) {
                    }
                }
            } else {
                Ref$BooleanRef ref$BooleanRef7 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.o;
                Ref$BooleanRef ref$BooleanRef8 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.n;
                nestedScrollScope3 = (NestedScrollScope) mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.r;
                ResultKt.b(obj);
                mouseWheelScrollingLogic2 = mouseWheelScrollingLogic3;
                ref$BooleanRef = ref$BooleanRef8;
                ref$FloatRef2 = ref$FloatRef3;
                i = 2;
                i2 = 1;
                ref$ObjectRef3 = ref$ObjectRef5;
                ref$BooleanRef7.j = ((Boolean) obj).booleanValue();
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$3 = this;
                ref$ObjectRef5 = ref$ObjectRef3;
                i8 = i2;
                i7 = i;
                ref$FloatRef3 = ref$FloatRef2;
                mouseWheelScrollingLogic3 = mouseWheelScrollingLogic2;
                nestedScrollScope = nestedScrollScope3;
                z = ref$BooleanRef.j;
                Unit unit2222 = Unit.a;
                if (!z) {
                }
            }
        } else {
            ResultKt.b(obj);
            nestedScrollScope = (NestedScrollScope) mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.r;
            ?? obj3 = new Object();
            obj3.j = true;
            ref$BooleanRef = obj3;
            z = ref$BooleanRef.j;
            Unit unit22222 = Unit.a;
            if (!z) {
            }
        }
    }
}
