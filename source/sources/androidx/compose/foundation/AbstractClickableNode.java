package androidx.compose.foundation;

import android.view.KeyEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoundEffect;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.o0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractClickableNode extends DelegatingNode implements PointerInputModifierNode, KeyInputModifierNode, SemanticsModifierNode, CompositionLocalConsumerModifierNode, ObserverModifierNode, IndirectPointerInputModifierNode, GestureConnection {
    public IndicationNodeFactory A;
    public boolean B;
    public String C;
    public Role D;
    public boolean E;
    public Function0 F;
    public final FocusableNode G;
    public IndicationNodeFactory H;
    public DelegatableNode I;
    public String J = "idle";
    public DelegatableNode K;
    public PressInteraction.Press L;
    public HoverInteraction$Enter M;
    public final MutableLongObjectMap N;
    public long O;
    public PressInteraction.Press P;
    public MutableInteractionSource Q;
    public boolean R;
    public Job S;
    public MutableInteractionSource z;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.FunctionReference] */
    public AbstractClickableNode(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, Function0 function0) {
        this.z = mutableInteractionSource;
        this.A = indicationNodeFactory;
        this.B = z;
        this.C = str;
        this.D = role;
        this.E = z2;
        this.F = function0;
        this.G = new FocusableNode(mutableInteractionSource, 0, new FunctionReference(1, this, AbstractClickableNode.class, "onFocusChange", "onFocusChange(Z)V", 0));
        int i = LongObjectMapKt.a;
        this.N = new MutableLongObjectMap(6);
        this.O = 0L;
        MutableInteractionSource mutableInteractionSource2 = this.z;
        this.Q = mutableInteractionSource2;
        this.R = mutableInteractionSource2 == null;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Role role = this.D;
        if (role != null) {
            SemanticsPropertiesKt.c(semanticsPropertyReceiver, role.a);
        }
        String str = this.C;
        defpackage.a aVar = new defpackage.a(this, 1);
        KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
        semanticsPropertyReceiver.b(SemanticsActions.b, new AccessibilityAction(str, aVar));
        if (this.E) {
            this.G.E0(semanticsPropertyReceiver);
        } else {
            semanticsPropertyReceiver.b(SemanticsProperties.j, Unit.a);
        }
        b1(semanticsPropertyReceiver);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0077 A[RETURN] */
    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean I(KeyEvent keyEvent) {
        boolean z;
        j1();
        long a = KeyEvent_androidKt.a(keyEvent);
        boolean z2 = this.E;
        MutableLongObjectMap mutableLongObjectMap = this.N;
        if (z2 && KeyEvent_androidKt.b(keyEvent) == 2 && ClickableKt.d(keyEvent)) {
            if (!mutableLongObjectMap.a(a)) {
                PressInteraction.Press press = new PressInteraction.Press(this.O);
                mutableLongObjectMap.g(a, press);
                if (this.z != null) {
                    BuildersKt.c(M0(), null, null, new AbstractClickableNode$onKeyEvent$1(this, press, null), 3);
                }
                z = true;
            } else {
                z = false;
            }
            if (!l1(keyEvent) && !z) {
                return false;
            }
        } else {
            if (this.E && KeyEvent_androidKt.b(keyEvent) == 1 && ClickableKt.d(keyEvent)) {
                PressInteraction.Press press2 = (PressInteraction.Press) mutableLongObjectMap.f(a);
                if (press2 != null) {
                    if (this.z != null) {
                        BuildersKt.c(M0(), null, null, new AbstractClickableNode$onKeyEvent$2(this, press2, null), 3);
                    }
                    m1(keyEvent);
                }
                if (press2 != null) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean J0() {
        return true;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void K(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        long j2 = (((j << 32) >> 33) & 4294967295L) | ((j >> 33) << 32);
        this.O = (Float.floatToRawIntBits((int) (j2 & 4294967295L)) & 4294967295L) | (Float.floatToRawIntBits((int) (j2 >> 32)) << 32);
        j1();
        if (this.E) {
            if (this.I == null) {
                GestureNode gestureNode = new GestureNode(this);
                Y0(gestureNode);
                this.I = gestureNode;
            }
            if (pointerEventPass == PointerEventPass.k) {
                int i = pointerEvent.f;
                if (i == 4) {
                    BuildersKt.c(M0(), null, null, new AbstractClickableNode$onPointerEvent$1(this, null), 3);
                } else if (i == 5) {
                    BuildersKt.c(M0(), null, null, new AbstractClickableNode$onPointerEvent$2(this, null), 3);
                }
            }
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        s0();
        if (!this.R) {
            j1();
        }
        if (this.E) {
            Y0(this.G);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        d1();
        if (this.Q == null) {
            this.z = null;
        }
        DelegatableNode delegatableNode = this.K;
        if (delegatableNode != null) {
            Z0(delegatableNode);
        }
        this.K = null;
        DelegatableNode delegatableNode2 = this.I;
        if (delegatableNode2 != null) {
            Z0(delegatableNode2);
        }
        this.I = null;
    }

    @Override // androidx.compose.foundation.GestureConnection
    public final String T() {
        return this.J;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public final boolean c1() {
        ?? obj = new Object();
        GestureNodeKt.b(this, new o0(obj, 1));
        if (obj.j == null) {
            int i = Clickable_androidKt.b;
            ViewParent parent = DelegatableNode_androidKt.a(this).getParent();
            while (parent != null && (parent instanceof ViewGroup)) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if (!viewGroup.shouldDelayChildPressedState()) {
                    parent = viewGroup.getParent();
                }
            }
            return false;
        }
        return true;
    }

    public final void d1() {
        MutableInteractionSource mutableInteractionSource = this.z;
        MutableLongObjectMap mutableLongObjectMap = this.N;
        if (mutableInteractionSource != null) {
            PressInteraction.Press press = this.L;
            if (press != null) {
                mutableInteractionSource.b(new PressInteraction.Cancel(press));
            }
            PressInteraction.Press press2 = this.P;
            if (press2 != null) {
                mutableInteractionSource.b(new PressInteraction.Cancel(press2));
            }
            HoverInteraction$Enter hoverInteraction$Enter = this.M;
            if (hoverInteraction$Enter != null) {
                mutableInteractionSource.b(new HoverInteraction$Exit(hoverInteraction$Enter));
            }
            Object[] objArr = mutableLongObjectMap.c;
            long[] jArr = mutableLongObjectMap.a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                mutableInteractionSource.b(new PressInteraction.Cancel((PressInteraction.Press) objArr[(i << 3) + i3]));
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        }
                    }
                    if (i == length) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        this.L = null;
        this.P = null;
        this.M = null;
        mutableLongObjectMap.c();
    }

    public final long e1(long j) {
        long D0 = DelegatableNodeKt.g(this).H.D0(((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.t)).d());
        float max = Math.max(0.0f, Float.intBitsToFloat((int) (D0 >> 32)) - ((int) (j >> 32))) / 2.0f;
        float max2 = Math.max(0.0f, Float.intBitsToFloat((int) (D0 & 4294967295L)) - ((int) (j & 4294967295L))) / 2.0f;
        return (Float.floatToRawIntBits(max2) & 4294967295L) | (Float.floatToRawIntBits(max) << 32);
    }

    public final void f1(boolean z) {
        PressInteraction.Press press;
        DisposableHandle disposableHandle;
        MutableInteractionSource mutableInteractionSource = this.z;
        if (mutableInteractionSource != null) {
            Job job = this.S;
            if (job != null && ((AbstractCoroutine) job).h()) {
                Job job2 = this.S;
                if (job2 != null) {
                    ((JobSupport) job2).n(null);
                }
            } else {
                if (z) {
                    press = this.P;
                } else {
                    press = this.L;
                }
                if (press != null) {
                    PressInteraction.Cancel cancel = new PressInteraction.Cancel(press);
                    Job job3 = (Job) ((ContextScope) M0()).j.v(Job.Key.j);
                    if (job3 != null) {
                        disposableHandle = job3.v0(new defpackage.b(0, mutableInteractionSource, cancel));
                    } else {
                        disposableHandle = null;
                    }
                    BuildersKt.c(M0(), null, null, new AbstractClickableNode$handlePressInteractionCancel$1$1$1(mutableInteractionSource, cancel, disposableHandle, null), 3);
                }
            }
            if (z) {
                this.P = null;
            } else {
                this.L = null;
            }
        }
    }

    public final void g1(long j, boolean z) {
        PressInteraction.Press press;
        MutableInteractionSource mutableInteractionSource = this.z;
        if (mutableInteractionSource != null) {
            Job job = this.S;
            if (job != null && ((AbstractCoroutine) job).h()) {
                ((JobSupport) job).n(null);
                BuildersKt.c(M0(), null, null, new AbstractClickableNode$handlePressInteractionRelease$1$1(job, j, mutableInteractionSource, null), 3);
            } else {
                if (z) {
                    press = this.P;
                } else {
                    press = this.L;
                }
                if (press != null) {
                    BuildersKt.c(M0(), null, null, new AbstractClickableNode$handlePressInteractionRelease$1$2$1(mutableInteractionSource, press, null), 3);
                }
            }
            if (z) {
                this.P = null;
            } else {
                this.L = null;
            }
        }
    }

    public final void h1(IndirectPointerInputChange indirectPointerInputChange) {
        MutableInteractionSource mutableInteractionSource = this.z;
        if (mutableInteractionSource != null) {
            PressInteraction.Press press = new PressInteraction.Press(indirectPointerInputChange.c);
            if (c1()) {
                this.S = BuildersKt.c(M0(), null, null, new AbstractClickableNode$handlePressInteractionStart$1$1(mutableInteractionSource, press, this, null), 3);
            } else {
                this.P = press;
                BuildersKt.c(M0(), null, null, new AbstractClickableNode$handlePressInteractionStart$1$2(mutableInteractionSource, press, null), 3);
            }
        }
    }

    public final void i1(PointerInputChange pointerInputChange) {
        MutableInteractionSource mutableInteractionSource = this.z;
        if (mutableInteractionSource != null) {
            PressInteraction.Press press = new PressInteraction.Press(pointerInputChange.c);
            if (c1()) {
                this.S = BuildersKt.c(M0(), null, null, new AbstractClickableNode$handlePressInteractionStart$2$1(mutableInteractionSource, press, this, null), 3);
            } else {
                this.L = press;
                BuildersKt.c(M0(), null, null, new AbstractClickableNode$handlePressInteractionStart$2$2(mutableInteractionSource, press, null), 3);
            }
        }
    }

    public final void j1() {
        IndicationNodeFactory indicationNodeFactory;
        if (this.K == null) {
            if (this.B) {
                indicationNodeFactory = this.H;
            } else {
                indicationNodeFactory = this.A;
            }
            if (indicationNodeFactory != null) {
                if (this.z == null) {
                    this.z = InteractionSourceKt.a();
                }
                this.G.d1(this.z);
                MutableInteractionSource mutableInteractionSource = this.z;
                mutableInteractionSource.getClass();
                DelegatableNode a = indicationNodeFactory.a(mutableInteractionSource);
                Y0(a);
                this.K = a;
            }
        }
    }

    public abstract boolean l1(KeyEvent keyEvent);

    public abstract void m1(KeyEvent keyEvent);

    public final void n1() {
        SoundEffect soundEffect = (SoundEffect) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.v);
        if (soundEffect != null) {
            soundEffect.a();
        }
        this.F.a();
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    public final boolean o(KeyEvent keyEvent) {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0082, code lost:
    
        if (r3.K == null) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void o1(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, Function0 function0) {
        boolean z3;
        boolean z4;
        DelegatableNode delegatableNode;
        boolean z5 = true;
        boolean z6 = false;
        if (!Intrinsics.a(this.Q, mutableInteractionSource)) {
            d1();
            this.Q = mutableInteractionSource;
            this.z = mutableInteractionSource;
            z3 = true;
        } else {
            z3 = false;
        }
        if (!Intrinsics.a(this.A, indicationNodeFactory)) {
            this.A = indicationNodeFactory;
            z3 = true;
        }
        if (this.B != z) {
            this.B = z;
            if (z) {
                s0();
            }
            z3 = true;
        }
        boolean z7 = this.E;
        FocusableNode focusableNode = this.G;
        if (z7 != z2) {
            if (z2) {
                Y0(focusableNode);
            } else {
                Z0(focusableNode);
                d1();
            }
            SemanticsModifierNodeKt.b(this);
            if (!z2) {
                DelegatableNode delegatableNode2 = this.I;
                if (delegatableNode2 != null) {
                    Z0(delegatableNode2);
                }
                this.I = null;
                this.J = "idle";
            }
            this.E = z2;
        }
        if (!Intrinsics.a(this.C, str)) {
            this.C = str;
            SemanticsModifierNodeKt.b(this);
        }
        if (!Intrinsics.a(this.D, role)) {
            this.D = role;
            SemanticsModifierNodeKt.b(this);
        }
        this.F = function0;
        boolean z8 = this.R;
        MutableInteractionSource mutableInteractionSource2 = this.Q;
        if (mutableInteractionSource2 == null) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z8 != z4) {
            if (mutableInteractionSource2 == null) {
                z6 = true;
            }
            this.R = z6;
            if (!z6) {
            }
        }
        z5 = z3;
        if (z5 && ((delegatableNode = this.K) != null || !this.R)) {
            if (delegatableNode != null) {
                Z0(delegatableNode);
            }
            this.K = null;
            j1();
        }
        focusableNode.d1(this.z);
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void s0() {
        if (this.B) {
            ObserverModifierNodeKt.a(this, new defpackage.a(this, 0));
        }
    }

    public void k1() {
    }

    public void b1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
    }
}
