package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.layout.PinnableContainer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class LazyLayoutPinnableItem implements PinnableContainer, PinnableContainer.PinnedHandle, LazyLayoutPinnedItemList.PinnedItem {
    public final Object a;
    public final LazyLayoutPinnedItemList b;
    public int d;
    public PinnableContainer.PinnedHandle e;
    public boolean f;
    public int c = -1;
    public final MutableState g = SnapshotStateKt.g(null);

    public LazyLayoutPinnableItem(Object obj, LazyLayoutPinnedItemList lazyLayoutPinnedItemList) {
        this.a = obj;
        this.b = lazyLayoutPinnedItemList;
    }

    @Override // androidx.compose.ui.layout.PinnableContainer.PinnedHandle
    public final void a() {
        if (!this.f) {
            if (this.d <= 0) {
                InlineClassHelperKt.c("Release should only be called once");
            }
            int i = this.d - 1;
            this.d = i;
            if (i == 0) {
                c();
            }
        }
    }

    @Override // androidx.compose.ui.layout.PinnableContainer
    public final PinnableContainer.PinnedHandle b() {
        LazyLayoutPinnableItem lazyLayoutPinnableItem;
        if (this.f) {
            InlineClassHelperKt.c("Pin should not be called on an already disposed item ");
        }
        if (this.d == 0) {
            this.b.j.add(this);
            PinnableContainer pinnableContainer = (PinnableContainer) ((SnapshotMutableStateImpl) this.g).getValue();
            if (pinnableContainer != null) {
                lazyLayoutPinnableItem = (LazyLayoutPinnableItem) pinnableContainer;
                lazyLayoutPinnableItem.b();
            } else {
                lazyLayoutPinnableItem = null;
            }
            this.e = lazyLayoutPinnableItem;
        }
        this.d++;
        return this;
    }

    public final void c() {
        this.b.j.remove(this);
        PinnableContainer.PinnedHandle pinnedHandle = this.e;
        if (pinnedHandle != null) {
            ((LazyLayoutPinnableItem) pinnedHandle).a();
        }
        this.e = null;
    }
}
