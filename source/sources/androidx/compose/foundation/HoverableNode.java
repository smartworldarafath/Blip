package androidx.compose.foundation;

import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.node.PointerInputModifierNode;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class HoverableNode extends Modifier.Node implements PointerInputModifierNode {
    public MutableInteractionSource x;
    public HoverInteraction$Enter y;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.foundation.interaction.Interaction, java.lang.Object, androidx.compose.foundation.interaction.HoverInteraction$Enter] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object Y0(HoverableNode hoverableNode, ContinuationImpl continuationImpl) {
        HoverableNode$emitEnter$1 hoverableNode$emitEnter$1;
        int i;
        HoverInteraction$Enter hoverInteraction$Enter;
        if (continuationImpl instanceof HoverableNode$emitEnter$1) {
            hoverableNode$emitEnter$1 = (HoverableNode$emitEnter$1) continuationImpl;
            int i2 = hoverableNode$emitEnter$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                hoverableNode$emitEnter$1.p = i2 - Integer.MIN_VALUE;
                Object obj = hoverableNode$emitEnter$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = hoverableNode$emitEnter$1.p;
                if (i == 0) {
                    if (i == 1) {
                        hoverInteraction$Enter = hoverableNode$emitEnter$1.m;
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    if (hoverableNode.y == null) {
                        ?? obj2 = new Object();
                        MutableInteractionSource mutableInteractionSource = hoverableNode.x;
                        hoverableNode$emitEnter$1.m = obj2;
                        hoverableNode$emitEnter$1.p = 1;
                        if (mutableInteractionSource.a(obj2, hoverableNode$emitEnter$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        hoverInteraction$Enter = obj2;
                    }
                    return Unit.a;
                }
                hoverableNode.y = hoverInteraction$Enter;
                return Unit.a;
            }
        }
        hoverableNode$emitEnter$1 = new HoverableNode$emitEnter$1(hoverableNode, continuationImpl);
        Object obj3 = hoverableNode$emitEnter$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = hoverableNode$emitEnter$1.p;
        if (i == 0) {
        }
        hoverableNode.y = hoverInteraction$Enter;
        return Unit.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object Z0(HoverableNode hoverableNode, ContinuationImpl continuationImpl) {
        HoverableNode$emitExit$1 hoverableNode$emitExit$1;
        int i;
        if (continuationImpl instanceof HoverableNode$emitExit$1) {
            hoverableNode$emitExit$1 = (HoverableNode$emitExit$1) continuationImpl;
            int i2 = hoverableNode$emitExit$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                hoverableNode$emitExit$1.o = i2 - Integer.MIN_VALUE;
                Object obj = hoverableNode$emitExit$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = hoverableNode$emitExit$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    HoverInteraction$Enter hoverInteraction$Enter = hoverableNode.y;
                    if (hoverInteraction$Enter != null) {
                        HoverInteraction$Exit hoverInteraction$Exit = new HoverInteraction$Exit(hoverInteraction$Enter);
                        MutableInteractionSource mutableInteractionSource = hoverableNode.x;
                        hoverableNode$emitExit$1.o = 1;
                        if (mutableInteractionSource.a(hoverInteraction$Exit, hoverableNode$emitExit$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return Unit.a;
                }
                hoverableNode.y = null;
                return Unit.a;
            }
        }
        hoverableNode$emitExit$1 = new HoverableNode$emitExit$1(hoverableNode, continuationImpl);
        Object obj2 = hoverableNode$emitExit$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = hoverableNode$emitExit$1.o;
        if (i == 0) {
        }
        hoverableNode.y = null;
        return Unit.a;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void K(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        if (pointerEventPass == PointerEventPass.k) {
            int i = pointerEvent.f;
            if (i == 4) {
                BuildersKt.c(M0(), null, null, new HoverableNode$onPointerEvent$1(this, null), 3);
            } else if (i == 5) {
                BuildersKt.c(M0(), null, null, new HoverableNode$onPointerEvent$2(this, null), 3);
            }
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void L() {
        a1();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        a1();
    }

    public final void a1() {
        HoverInteraction$Enter hoverInteraction$Enter = this.y;
        if (hoverInteraction$Enter != null) {
            this.x.b(new HoverInteraction$Exit(hoverInteraction$Enter));
            this.y = null;
        }
    }
}
