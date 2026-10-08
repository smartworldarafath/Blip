package androidx.core.view;

import android.os.Build;
import android.view.ScrollFeedbackProvider;
import androidx.core.widget.NestedScrollView;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ScrollFeedbackProviderCompat {
    public final ScrollFeedbackProviderImpl a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ScrollFeedbackProviderApi35Impl implements ScrollFeedbackProviderImpl {
        public final ScrollFeedbackProvider a;

        public ScrollFeedbackProviderApi35Impl(NestedScrollView nestedScrollView) {
            this.a = ScrollFeedbackProvider.createProvider(nestedScrollView);
        }

        @Override // androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl
        public final void onScrollLimit(int i, int i2, int i3, boolean z) {
            this.a.onScrollLimit(i, i2, i3, z);
        }

        @Override // androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl
        public final void onScrollProgress(int i, int i2, int i3, int i4) {
            this.a.onScrollProgress(i, i2, i3, i4);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ScrollFeedbackProviderImpl {
        void onScrollLimit(int i, int i2, int i3, boolean z);

        void onScrollProgress(int i, int i2, int i3, int i4);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, androidx.core.view.ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl] */
    public ScrollFeedbackProviderCompat(NestedScrollView nestedScrollView) {
        if (Build.VERSION.SDK_INT >= 35) {
            this.a = new ScrollFeedbackProviderApi35Impl(nestedScrollView);
        } else {
            this.a = new Object();
        }
    }

    public final void a(int i, int i2, int i3, boolean z) {
        this.a.onScrollLimit(i, i2, i3, z);
    }

    public final void b(int i, int i2, int i3, int i4) {
        this.a.onScrollProgress(i, i2, i3, i4);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ScrollFeedbackProviderBaseImpl implements ScrollFeedbackProviderImpl {
        @Override // androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl
        public final void onScrollLimit(int i, int i2, int i3, boolean z) {
        }

        @Override // androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl
        public final void onScrollProgress(int i, int i2, int i3, int i4) {
        }
    }
}
