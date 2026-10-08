package coil3.size;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import coil3.size.Dimension;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ViewSizeResolver<T extends View> extends SizeResolver {
    static Dimension k(int i, int i2, int i3) {
        if (i == -2) {
            return Dimension.Undefined.a;
        }
        int i4 = i - i3;
        if (i4 > 0) {
            DimensionKt.a(i4);
            return new Dimension.Pixels(i4);
        }
        int i5 = i2 - i3;
        if (i5 > 0) {
            DimensionKt.a(i5);
            return new Dimension.Pixels(i5);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [coil3.size.ViewSizeResolver$size$3$preDrawListener$1, android.view.ViewTreeObserver$OnPreDrawListener] */
    @Override // coil3.size.SizeResolver
    default Object g(Continuation continuation) {
        Size i = i();
        if (i != null) {
            return i;
        }
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(continuation));
        cancellableContinuationImpl.v();
        final ViewTreeObserver viewTreeObserver = ((RealViewSizeResolver) this).b.getViewTreeObserver();
        final ?? r1 = new ViewTreeObserver.OnPreDrawListener() { // from class: coil3.size.ViewSizeResolver$size$3$preDrawListener$1
            public boolean j;

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                ViewSizeResolver viewSizeResolver = ViewSizeResolver.this;
                Size i2 = viewSizeResolver.i();
                if (i2 != null) {
                    ViewTreeObserver viewTreeObserver2 = viewTreeObserver;
                    if (viewTreeObserver2.isAlive()) {
                        viewTreeObserver2.removeOnPreDrawListener(this);
                    } else {
                        ((RealViewSizeResolver) viewSizeResolver).b.getViewTreeObserver().removeOnPreDrawListener(this);
                    }
                    if (!this.j) {
                        this.j = true;
                        cancellableContinuationImpl.g(i2);
                    }
                }
                return true;
            }
        };
        viewTreeObserver.addOnPreDrawListener(r1);
        cancellableContinuationImpl.x(new Function1<Throwable, Unit>() { // from class: coil3.size.ViewSizeResolver$size$3$1
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                ViewTreeObserver viewTreeObserver2 = viewTreeObserver;
                boolean isAlive = viewTreeObserver2.isAlive();
                ViewSizeResolver$size$3$preDrawListener$1 viewSizeResolver$size$3$preDrawListener$1 = r1;
                if (isAlive) {
                    viewTreeObserver2.removeOnPreDrawListener(viewSizeResolver$size$3$preDrawListener$1);
                } else {
                    ((RealViewSizeResolver) ViewSizeResolver.this).b.getViewTreeObserver().removeOnPreDrawListener(viewSizeResolver$size$3$preDrawListener$1);
                }
                return Unit.a;
            }
        });
        Object u = cancellableContinuationImpl.u();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        return u;
    }

    default Size i() {
        int i;
        View view = ((RealViewSizeResolver) this).b;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i2 = -1;
        if (layoutParams != null) {
            i = layoutParams.width;
        } else {
            i = -1;
        }
        Dimension k = k(i, view.getWidth(), view.getPaddingRight() + view.getPaddingLeft());
        if (k != null) {
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            if (layoutParams2 != null) {
                i2 = layoutParams2.height;
            }
            Dimension k2 = k(i2, view.getHeight(), view.getPaddingBottom() + view.getPaddingTop());
            if (k2 == null) {
                return null;
            }
            return new Size(k, k2);
        }
        return null;
    }
}
