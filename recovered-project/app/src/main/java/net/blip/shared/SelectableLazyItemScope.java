package net.blip.shared;

import androidx.compose.foundation.lazy.LazyItemScope;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SelectableLazyItemScope implements LazyItemScope {
    public final MutableStateFlow a;
    public final MutableSharedFlow b;

    public SelectableLazyItemScope(MutableStateFlow mutableStateFlow, MutableSharedFlow mutableSharedFlow, LazyItemScope lazyItemScope) {
        lazyItemScope.getClass();
        this.a = mutableStateFlow;
        this.b = mutableSharedFlow;
    }
}
