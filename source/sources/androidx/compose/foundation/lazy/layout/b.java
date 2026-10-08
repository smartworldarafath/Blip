package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ b(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Object obj2 = this.k;
        switch (i) {
            case 0:
                final LazyLayoutItemContentFactory.CachedItemContent cachedItemContent = (LazyLayoutItemContentFactory.CachedItemContent) obj2;
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$lambda$0$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        LazyLayoutItemContentFactory.CachedItemContent.this.d = null;
                    }
                };
            case 1:
                final LazyLayoutPinnableItem lazyLayoutPinnableItem = (LazyLayoutPinnableItem) obj2;
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt$LazyLayoutPinnableItem$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        LazyLayoutPinnableItem lazyLayoutPinnableItem2 = LazyLayoutPinnableItem.this;
                        lazyLayoutPinnableItem2.f = true;
                        lazyLayoutPinnableItem2.d = 0;
                        lazyLayoutPinnableItem2.c();
                    }
                };
            default:
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj2;
                TraversableNode traversableNode = (TraversableNode) obj;
                traversableNode.getClass();
                LazyLayoutPrefetchState lazyLayoutPrefetchState = ((TraversablePrefetchStateNode) traversableNode).x;
                List list = (List) ref$ObjectRef.j;
                if (list != null) {
                    list.add(lazyLayoutPrefetchState);
                } else {
                    list = CollectionsKt.E(lazyLayoutPrefetchState);
                }
                ref$ObjectRef.j = list;
                return TraversableNode$Companion$TraverseDescendantsAction.k;
        }
    }
}
