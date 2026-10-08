package androidx.compose.ui;

import androidx.compose.foundation.BorderModifierNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverNodeOwnerScope;
import defpackage.p0;
import java.util.concurrent.CancellationException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Modifier {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Element extends Modifier {
        @Override // androidx.compose.ui.Modifier
        default Object b(Object obj, Function2 function2) {
            return function2.n(obj, this);
        }

        @Override // androidx.compose.ui.Modifier
        default boolean f(Function1 function1) {
            return ((Boolean) function1.b(this)).booleanValue();
        }
    }

    Object b(Object obj, Function2 function2);

    boolean f(Function1 function1);

    default Modifier l(Modifier modifier) {
        if (modifier == Companion.b) {
            return this;
        }
        return new CombinedModifier(this, modifier);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Node implements DelegatableNode {
        public ContextScope k;
        public int l;
        public Node n;
        public Node o;
        public ObserverNodeOwnerScope p;
        public NodeCoordinator q;
        public boolean r;
        public boolean s;
        public boolean t;
        public boolean u;
        public p0 v;
        public boolean w;
        public Node j = this;
        public int m = -1;

        public final CoroutineScope M0() {
            ContextScope contextScope = this.k;
            if (contextScope == null) {
                ContextScope a = CoroutineScopeKt.a(DelegatableNodeKt.h(this).getCoroutineContext().A(new JobImpl((Job) DelegatableNodeKt.h(this).getCoroutineContext().v(Job.Key.j))));
                this.k = a;
                return a;
            }
            return contextScope;
        }

        public boolean N0() {
            return !(this instanceof BorderModifierNode);
        }

        public void O0() {
            if (this.w) {
                InlineClassHelperKt.b("node attached multiple times");
            }
            if (this.q == null) {
                InlineClassHelperKt.b("attach invoked on a node without a coordinator");
            }
            this.w = true;
            this.t = true;
        }

        public void P0() {
            if (!this.w) {
                InlineClassHelperKt.b("Cannot detach a node that is not attached");
            }
            if (this.t) {
                InlineClassHelperKt.b("Must run runAttachLifecycle() before markAsDetached()");
            }
            if (this.u) {
                InlineClassHelperKt.b("Must run runDetachLifecycle() before markAsDetached()");
            }
            this.w = false;
            ContextScope contextScope = this.k;
            if (contextScope != null) {
                CoroutineScopeKt.b(contextScope, new CancellationException("The Modifier.Node was detached"));
                this.k = null;
            }
        }

        public void T0() {
            if (!this.w) {
                InlineClassHelperKt.b("reset() called on an unattached node");
            }
            S0();
        }

        public void U0() {
            if (!this.w) {
                InlineClassHelperKt.b("Must run markAsAttached() prior to runAttachLifecycle");
            }
            if (!this.t) {
                InlineClassHelperKt.b("Must run runAttachLifecycle() only once after markAsAttached()");
            }
            this.t = false;
            Q0();
            this.u = true;
        }

        public void V0() {
            if (!this.w) {
                InlineClassHelperKt.b("node detached multiple times");
            }
            if (this.q == null) {
                InlineClassHelperKt.b("detach invoked on a node without a coordinator");
            }
            if (!this.u) {
                InlineClassHelperKt.b("Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()");
            }
            this.u = false;
            p0 p0Var = this.v;
            if (p0Var != null) {
                p0Var.a();
            }
            R0();
        }

        public void W0(Node node) {
            this.j = node;
        }

        public void X0(NodeCoordinator nodeCoordinator) {
            this.q = nodeCoordinator;
        }

        public void Q0() {
        }

        public void R0() {
        }

        public void S0() {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion implements Modifier {
        public static final /* synthetic */ Companion b = new Object();

        @Override // androidx.compose.ui.Modifier
        public final boolean f(Function1 function1) {
            return true;
        }

        public final String toString() {
            return "Modifier";
        }

        @Override // androidx.compose.ui.Modifier
        public final Modifier l(Modifier modifier) {
            return modifier;
        }

        @Override // androidx.compose.ui.Modifier
        public final Object b(Object obj, Function2 function2) {
            return obj;
        }
    }
}
