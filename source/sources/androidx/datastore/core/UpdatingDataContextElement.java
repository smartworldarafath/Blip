package androidx.datastore.core;

import defpackage.u2;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UpdatingDataContextElement implements CoroutineContext.Element {
    public final UpdatingDataContextElement j;
    public final DataStoreImpl k;

    public UpdatingDataContextElement(UpdatingDataContextElement updatingDataContextElement, DataStoreImpl dataStoreImpl) {
        this.j = updatingDataContextElement;
        this.k = dataStoreImpl;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext A(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.c(this, coroutineContext);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object P0(Object obj, Function2 function2) {
        return function2.n(obj, this);
    }

    public final void a(DataStoreImpl dataStoreImpl) {
        if (this.k != dataStoreImpl) {
            UpdatingDataContextElement updatingDataContextElement = this.j;
            if (updatingDataContextElement != null) {
                updatingDataContextElement.a(dataStoreImpl);
                return;
            }
            return;
        }
        u2.l("Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details.");
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext g0(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return UpdatingDataContextElement$Companion$Key.j;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element v(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.a(this, key);
    }
}
