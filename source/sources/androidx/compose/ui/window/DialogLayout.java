package androidx.compose.ui.window;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DialogLayout extends AbstractComposeView implements OnApplyWindowInsetsListener {
    public static final /* synthetic */ int z = 0;
    public final Window t;
    public final MutableState u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;

    public DialogLayout(Context context, Window window) {
        super(context);
        this.t = window;
        this.u = SnapshotStateKt.g(ComposableSingletons$AndroidDialog_androidKt.a);
        ViewCompat.q(this, this);
        ViewCompat.r(this, new WindowInsetsAnimationCompat.Callback() { // from class: androidx.compose.ui.window.DialogLayout.1
            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final WindowInsetsCompat c(WindowInsetsCompat windowInsetsCompat, List list) {
                DialogLayout dialogLayout = DialogLayout.this;
                if (!dialogLayout.w) {
                    View childAt = dialogLayout.getChildAt(0);
                    int max = Math.max(0, childAt.getLeft());
                    int max2 = Math.max(0, childAt.getTop());
                    int max3 = Math.max(0, dialogLayout.getWidth() - childAt.getRight());
                    int max4 = Math.max(0, dialogLayout.getHeight() - childAt.getBottom());
                    if (max != 0 || max2 != 0 || max3 != 0 || max4 != 0) {
                        return windowInsetsCompat.n(max, max2, max3, max4);
                    }
                }
                return windowInsetsCompat;
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final WindowInsetsAnimationCompat.BoundsCompat d(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
                DialogLayout dialogLayout = DialogLayout.this;
                if (!dialogLayout.w) {
                    View childAt = dialogLayout.getChildAt(0);
                    int max = Math.max(0, childAt.getLeft());
                    int max2 = Math.max(0, childAt.getTop());
                    int max3 = Math.max(0, dialogLayout.getWidth() - childAt.getRight());
                    int max4 = Math.max(0, dialogLayout.getHeight() - childAt.getBottom());
                    if (max != 0 || max2 != 0 || max3 != 0 || max4 != 0) {
                        Insets b = Insets.b(max, max2, max3, max4);
                        int i = b.a;
                        Insets insets = boundsCompat.a;
                        int i2 = b.b;
                        int i3 = b.c;
                        int i4 = b.d;
                        return new WindowInsetsAnimationCompat.BoundsCompat(WindowInsetsCompat.o(insets, i, i2, i3, i4), WindowInsetsCompat.o(boundsCompat.b, i, i2, i3, i4));
                    }
                }
                return boundsCompat;
            }
        });
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void a(final int i, Composer composer) {
        int i2;
        boolean z2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1735448596);
        if (gapComposer.h(this)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        if ((i3 & 3) != 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i3 & 1, z2)) {
            ((Function2) ((SnapshotMutableStateImpl) this.u).getValue()).n(gapComposer, 0);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(i) { // from class: androidx.compose.ui.window.c
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int i4 = DialogLayout.z;
                    int a = RecomposeScopeImplKt.a(1);
                    DialogLayout.this.a(a, (Composer) obj);
                    return Unit.a;
                }
            };
        }
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void g(boolean z2, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int paddingLeft = (((i5 - measuredWidth) - paddingRight) / 2) + getPaddingLeft();
        int paddingTop = (((i6 - measuredHeight) - paddingBottom) / 2) + getPaddingTop();
        childAt.layout(paddingLeft, paddingTop, measuredWidth + paddingLeft, measuredHeight + paddingTop);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.y;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0088  */
    @Override // androidx.compose.ui.platform.AbstractComposeView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int mode;
        int min;
        int i6 = 0;
        View childAt = getChildAt(0);
        if (childAt == null) {
            super.h(i, i2);
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        Window window = this.t;
        if (mode2 == Integer.MIN_VALUE && !this.v && window.getAttributes().height == -2) {
            if (this.w) {
                int i7 = Build.VERSION.SDK_INT;
                if (i7 < 30) {
                    i3 = Api21Impl.a.a(window);
                } else if (i7 < 32) {
                    i3 = Api30Impl.a.a(window);
                }
            } else {
                i3 = size2 + 1;
            }
            int paddingRight = getPaddingRight() + getPaddingLeft();
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            i4 = size - paddingRight;
            if (i4 < 0) {
                i4 = 0;
            }
            i5 = i3 - paddingBottom;
            if (i5 >= 0) {
                i6 = i5;
            }
            mode = View.MeasureSpec.getMode(i);
            if (mode != 0) {
                i = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
            }
            if (mode2 != 0) {
                i2 = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
            }
            childAt.measure(i, i2);
            if (mode == Integer.MIN_VALUE) {
                if (mode != 1073741824) {
                    size = childAt.getMeasuredWidth() + paddingRight;
                }
            } else {
                size = Math.min(size, childAt.getMeasuredWidth() + paddingRight);
            }
            if (mode2 == Integer.MIN_VALUE) {
                if (mode2 != 1073741824) {
                    min = childAt.getMeasuredHeight() + paddingBottom;
                } else {
                    min = size2;
                }
            } else {
                min = Math.min(size2, childAt.getMeasuredHeight() + paddingBottom);
            }
            setMeasuredDimension(size, min);
            if (this.w && childAt.getMeasuredHeight() + paddingBottom > size2 && window.getAttributes().height == -2) {
                window.addFlags(Integer.MIN_VALUE);
                if (!this.v) {
                    window.setLayout(-1, -1);
                    return;
                }
                return;
            }
            return;
        }
        i3 = size2;
        int paddingRight2 = getPaddingRight() + getPaddingLeft();
        int paddingBottom2 = getPaddingBottom() + getPaddingTop();
        i4 = size - paddingRight2;
        if (i4 < 0) {
        }
        i5 = i3 - paddingBottom2;
        if (i5 >= 0) {
        }
        mode = View.MeasureSpec.getMode(i);
        if (mode != 0) {
        }
        if (mode2 != 0) {
        }
        childAt.measure(i, i2);
        if (mode == Integer.MIN_VALUE) {
        }
        if (mode2 == Integer.MIN_VALUE) {
        }
        setMeasuredDimension(size, min);
        if (this.w) {
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public final WindowInsetsCompat i(View view, WindowInsetsCompat windowInsetsCompat) {
        if (!this.w) {
            View childAt = getChildAt(0);
            int max = Math.max(0, childAt.getLeft());
            int max2 = Math.max(0, childAt.getTop());
            int max3 = Math.max(0, getWidth() - childAt.getRight());
            int max4 = Math.max(0, getHeight() - childAt.getBottom());
            if (max != 0 || max2 != 0 || max3 != 0 || max4 != 0) {
                return windowInsetsCompat.n(max, max2, max3, max4);
            }
        }
        return windowInsetsCompat;
    }
}
