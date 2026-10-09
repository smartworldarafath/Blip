package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.MeasuredSizeAwareModifierNode;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.k8;
import defpackage.q;
import defpackage.we;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineStart;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ContentInViewNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, MeasuredSizeAwareModifierNode {
    public BringIntoViewSpec A;
    public final we B;
    public boolean D;
    public boolean F;
    public Orientation x;
    public final ScrollingLogic y;
    public boolean z;
    public final BringIntoViewRequestPriorityQueue C = new BringIntoViewRequestPriorityQueue();
    public long E = -1;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Request {
        public final Function0 a;
        public final CancellableContinuationImpl b;

        public Request(Function0 function0, CancellableContinuationImpl cancellableContinuationImpl) {
            this.a = function0;
            this.b = cancellableContinuationImpl;
        }

        public final String toString() {
            String str;
            String str2;
            CancellableContinuationImpl cancellableContinuationImpl = this.b;
            CoroutineName coroutineName = (CoroutineName) cancellableContinuationImpl.n.v(CoroutineName.l);
            if (coroutineName != null) {
                str = coroutineName.k;
            } else {
                str = null;
            }
            int hashCode = hashCode();
            CharsKt.b(16);
            String num = Integer.toString(hashCode, 16);
            num.getClass();
            if (str != null) {
                str2 = q.i("[", str, "](");
            } else {
                str2 = "(";
            }
            return "Request@" + num + str2 + "currentBounds()=" + this.a.a() + ", continuation=" + cancellableContinuationImpl + ")";
        }
    }

    public ContentInViewNode(Orientation orientation, ScrollingLogic scrollingLogic, boolean z, BringIntoViewSpec bringIntoViewSpec, we weVar) {
        this.x = orientation;
        this.y = scrollingLogic;
        this.z = z;
        this.A = bringIntoViewSpec;
        this.B = weVar;
    }

    public static final float Y0(ContentInViewNode contentInViewNode, BringIntoViewSpec bringIntoViewSpec, long j) {
        float f;
        Rect rect;
        int compare;
        long j2 = contentInViewNode.E;
        MutableVector mutableVector = contentInViewNode.C.a;
        int i = mutableVector.l - 1;
        Object[] objArr = mutableVector.j;
        Rect rect2 = null;
        if (i < objArr.length) {
            rect = null;
            while (true) {
                if (i >= 0) {
                    Rect rect3 = (Rect) ((Request) objArr[i]).a.a();
                    if (rect3 != null) {
                        long c = rect3.c();
                        long a = IntSizeKt.a(contentInViewNode.Z0());
                        f = 0.0f;
                        int ordinal = contentInViewNode.x.ordinal();
                        if (ordinal != 0) {
                            if (ordinal == 1) {
                                compare = Float.compare(Float.intBitsToFloat((int) (c >> 32)), Float.intBitsToFloat((int) (a >> 32)));
                            } else {
                                k8.e();
                                return 0.0f;
                            }
                        } else {
                            compare = Float.compare(Float.intBitsToFloat((int) (c & 4294967295L)), Float.intBitsToFloat((int) (a & 4294967295L)));
                        }
                        if (compare <= 0) {
                            rect = rect3;
                        } else if (rect == null) {
                            rect = rect3;
                        }
                    }
                    i--;
                } else {
                    f = 0.0f;
                    break;
                }
            }
        } else {
            f = 0.0f;
            rect = null;
        }
        if (rect == null) {
            if (contentInViewNode.D) {
                rect2 = (Rect) contentInViewNode.B.a();
            }
            if (rect2 == null) {
                return f;
            }
            rect = rect2;
        }
        long a2 = IntSizeKt.a(j2);
        int ordinal2 = contentInViewNode.x.ordinal();
        if (ordinal2 != 0) {
            if (ordinal2 == 1) {
                float f2 = rect.a;
                return bringIntoViewSpec.a(f2 - ((int) (j >> 32)), rect.c - f2, Float.intBitsToFloat((int) (a2 >> 32)));
            }
            k8.e();
            return f;
        }
        float f3 = rect.b;
        return bringIntoViewSpec.a(f3 - ((int) (j & 4294967295L)), rect.d - f3, Float.intBitsToFloat((int) (a2 & 4294967295L)));
    }

    public static boolean a1(ContentInViewNode contentInViewNode, Rect rect, long j, long j2, int i) {
        if ((i & 1) != 0) {
            j = contentInViewNode.Z0();
        }
        long j3 = j;
        if ((i & 2) != 0) {
            j2 = 0;
        }
        long c1 = contentInViewNode.c1(rect, j3, j2);
        if (Math.abs(Float.intBitsToFloat((int) (c1 >> 32))) <= 0.5f && Math.abs(Float.intBitsToFloat((int) (c1 & 4294967295L))) <= 0.5f) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    public final long Z0() {
        long j = this.E;
        if (IntSize.a(j, -1L)) {
            return 0L;
        }
        return j;
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    public final void b(long j) {
        int b;
        long j2;
        long Z0 = Z0();
        this.E = j;
        int ordinal = this.x.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                b = Intrinsics.b((int) (j >> 32), (int) (Z0 >> 32));
            } else {
                k8.e();
                return;
            }
        } else {
            b = Intrinsics.b((int) (j & 4294967295L), (int) (Z0 & 4294967295L));
        }
        if (b < 0) {
            if (!this.z) {
                if (this.x == Orientation.j) {
                    j2 = (((int) (Z0 & 4294967295L)) - ((int) (j & 4294967295L))) & 4294967295L;
                } else {
                    j2 = (((int) (Z0 >> 32)) - ((int) (j >> 32))) << 32;
                }
            } else {
                j2 = 0;
            }
            long j3 = j2;
            Rect rect = (Rect) this.B.a();
            if (rect != null && !this.F && !this.D && a1(this, rect, Z0, 0L, 2) && !a1(this, rect, 0L, j3, 1)) {
                this.D = true;
                b1(j3);
            }
        }
    }

    public final void b1(long j) {
        BringIntoViewSpec bringIntoViewSpec = this.A;
        if (bringIntoViewSpec == null) {
            bringIntoViewSpec = (BringIntoViewSpec) CompositionLocalConsumerModifierNodeKt.a(this, BringIntoViewSpec_androidKt.a);
        }
        BringIntoViewSpec bringIntoViewSpec2 = bringIntoViewSpec;
        if (this.F) {
            InlineClassHelperKt.c("launchAnimation called when previous animation was running");
        }
        BringIntoViewSpec bringIntoViewSpec3 = this.A;
        if (bringIntoViewSpec3 == null) {
            bringIntoViewSpec3 = (BringIntoViewSpec) CompositionLocalConsumerModifierNodeKt.a(this, BringIntoViewSpec_androidKt.a);
        }
        bringIntoViewSpec3.getClass();
        BringIntoViewSpec.a.getClass();
        BuildersKt.c(M0(), null, CoroutineStart.m, new ContentInViewNode$launchAnimation$2(this, new UpdatableAnimationState(BringIntoViewSpec.Companion.b), bringIntoViewSpec2, j, null), 1);
    }

    public final long c1(Rect rect, long j, long j2) {
        long a = IntSizeKt.a(j);
        int ordinal = this.x.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                BringIntoViewSpec bringIntoViewSpec = this.A;
                if (bringIntoViewSpec == null) {
                    bringIntoViewSpec = (BringIntoViewSpec) CompositionLocalConsumerModifierNodeKt.a(this, BringIntoViewSpec_androidKt.a);
                }
                float f = rect.a;
                return (Float.floatToRawIntBits(bringIntoViewSpec.a(f - ((int) (j2 >> 32)), rect.c - f, Float.intBitsToFloat((int) (a >> 32)))) << 32) | (Float.floatToRawIntBits(0.0f) & 4294967295L);
            }
            k8.e();
            return 0L;
        }
        BringIntoViewSpec bringIntoViewSpec2 = this.A;
        if (bringIntoViewSpec2 == null) {
            bringIntoViewSpec2 = (BringIntoViewSpec) CompositionLocalConsumerModifierNodeKt.a(this, BringIntoViewSpec_androidKt.a);
        }
        float f2 = rect.b;
        float a2 = bringIntoViewSpec2.a(f2 - ((int) (j2 & 4294967295L)), rect.d - f2, Float.intBitsToFloat((int) (a & 4294967295L)));
        return (Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(a2) & 4294967295L);
    }
}
