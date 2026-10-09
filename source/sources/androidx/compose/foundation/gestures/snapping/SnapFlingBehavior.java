package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.ScrollableKt$DefaultScrollMotionDurationScale$1;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import defpackage.u2;
import defpackage.xf;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SnapFlingBehavior implements TargetedFlingBehavior {
    public final PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 a;
    public final DecayAnimationSpec b;
    public final SpringSpec c;
    public final ScrollableKt$DefaultScrollMotionDurationScale$1 d = ScrollableKt.b;

    public SnapFlingBehavior(PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 pagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1, DecayAnimationSpec decayAnimationSpec, SpringSpec springSpec) {
        this.a = pagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;
        this.b = decayAnimationSpec;
        this.c = springSpec;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(SnapFlingBehavior snapFlingBehavior, ScrollScope scrollScope, float f, float f2, xf xfVar, ContinuationImpl continuationImpl) {
        SnapFlingBehavior$tryApproach$1 snapFlingBehavior$tryApproach$1;
        int i;
        ApproachAnimation targetApproachAnimation;
        if (continuationImpl instanceof SnapFlingBehavior$tryApproach$1) {
            snapFlingBehavior$tryApproach$1 = (SnapFlingBehavior$tryApproach$1) continuationImpl;
            int i2 = snapFlingBehavior$tryApproach$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                snapFlingBehavior$tryApproach$1.o = i2 - Integer.MIN_VALUE;
                SnapFlingBehavior$tryApproach$1 snapFlingBehavior$tryApproach$12 = snapFlingBehavior$tryApproach$1;
                Object obj = snapFlingBehavior$tryApproach$12.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = snapFlingBehavior$tryApproach$12.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    if (Math.abs(f) == 0.0f || Math.abs(f2) == 0.0f) {
                        return AnimationStateKt.b(f, f2, 28);
                    }
                    snapFlingBehavior$tryApproach$12.o = 1;
                    DecayAnimationSpec decayAnimationSpec = snapFlingBehavior.b;
                    if (Math.abs(DecayAnimationSpecKt.a(decayAnimationSpec, f2)) >= Math.abs(f)) {
                        targetApproachAnimation = new DecayApproachAnimation(decayAnimationSpec);
                    } else {
                        targetApproachAnimation = new TargetApproachAnimation(snapFlingBehavior.c);
                    }
                    obj = targetApproachAnimation.a(scrollScope, new Float(f), new Float(f2), xfVar, snapFlingBehavior$tryApproach$12);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return ((AnimationResult) obj).b;
            }
        }
        snapFlingBehavior$tryApproach$1 = new SnapFlingBehavior$tryApproach$1(snapFlingBehavior, continuationImpl);
        SnapFlingBehavior$tryApproach$1 snapFlingBehavior$tryApproach$122 = snapFlingBehavior$tryApproach$1;
        Object obj2 = snapFlingBehavior$tryApproach$122.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = snapFlingBehavior$tryApproach$122.o;
        if (i == 0) {
        }
        return ((AnimationResult) obj2).b;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object c(ScrollScope scrollScope, float f, Function1 function1, ContinuationImpl continuationImpl) {
        SnapFlingBehavior$fling$1 snapFlingBehavior$fling$1;
        int i;
        Function1 function12;
        if (continuationImpl instanceof SnapFlingBehavior$fling$1) {
            snapFlingBehavior$fling$1 = (SnapFlingBehavior$fling$1) continuationImpl;
            int i2 = snapFlingBehavior$fling$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                snapFlingBehavior$fling$1.p = i2 - Integer.MIN_VALUE;
                Object obj = snapFlingBehavior$fling$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = snapFlingBehavior$fling$1.p;
                if (i == 0) {
                    if (i == 1) {
                        function12 = snapFlingBehavior$fling$1.m;
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    SnapFlingBehavior$fling$result$1 snapFlingBehavior$fling$result$1 = new SnapFlingBehavior$fling$result$1(this, f, function1, scrollScope, null);
                    snapFlingBehavior$fling$1.m = function1;
                    snapFlingBehavior$fling$1.p = 1;
                    obj = BuildersKt.e(this.d, snapFlingBehavior$fling$result$1, snapFlingBehavior$fling$1);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    function12 = function1;
                }
                AnimationResult animationResult = (AnimationResult) obj;
                function12.b(new Float(0.0f));
                return animationResult;
            }
        }
        snapFlingBehavior$fling$1 = new SnapFlingBehavior$fling$1(this, continuationImpl);
        Object obj2 = snapFlingBehavior$fling$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = snapFlingBehavior$fling$1.p;
        if (i == 0) {
        }
        AnimationResult animationResult2 = (AnimationResult) obj2;
        function12.b(new Float(0.0f));
        return animationResult2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object d(ScrollScope scrollScope, float f, Function1 function1, ContinuationImpl continuationImpl) {
        SnapFlingBehavior$performFling$1 snapFlingBehavior$performFling$1;
        int i;
        float floatValue;
        if (continuationImpl instanceof SnapFlingBehavior$performFling$1) {
            snapFlingBehavior$performFling$1 = (SnapFlingBehavior$performFling$1) continuationImpl;
            int i2 = snapFlingBehavior$performFling$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                snapFlingBehavior$performFling$1.o = i2 - Integer.MIN_VALUE;
                Object obj = snapFlingBehavior$performFling$1.m;
                Object obj2 = CoroutineSingletons.j;
                i = snapFlingBehavior$performFling$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    snapFlingBehavior$performFling$1.o = 1;
                    obj = c(scrollScope, f, function1, snapFlingBehavior$performFling$1);
                    if (obj == obj2) {
                        return obj2;
                    }
                }
                AnimationResult animationResult = (AnimationResult) obj;
                floatValue = animationResult.a.floatValue();
                AnimationState animationState = animationResult.b;
                float f2 = 0.0f;
                if (floatValue != 0.0f) {
                    f2 = ((Number) animationState.b()).floatValue();
                }
                return new Float(f2);
            }
        }
        snapFlingBehavior$performFling$1 = new SnapFlingBehavior$performFling$1(this, continuationImpl);
        Object obj3 = snapFlingBehavior$performFling$1.m;
        Object obj22 = CoroutineSingletons.j;
        i = snapFlingBehavior$performFling$1.o;
        if (i == 0) {
        }
        AnimationResult animationResult2 = (AnimationResult) obj3;
        floatValue = animationResult2.a.floatValue();
        AnimationState animationState2 = animationResult2.b;
        float f22 = 0.0f;
        if (floatValue != 0.0f) {
        }
        return new Float(f22);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SnapFlingBehavior) {
            SnapFlingBehavior snapFlingBehavior = (SnapFlingBehavior) obj;
            if (!snapFlingBehavior.c.equals(this.c) || !Intrinsics.a(snapFlingBehavior.b, this.b) || snapFlingBehavior.a != this.a) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() + ((this.b.hashCode() + (this.c.hashCode() * 31)) * 31);
    }
}
