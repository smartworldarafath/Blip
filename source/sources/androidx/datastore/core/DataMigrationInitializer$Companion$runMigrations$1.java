package androidx.datastore.core;

import java.io.Serializable;
import java.util.Iterator;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.DataMigrationInitializer$Companion", f = "DataMigrationInitializer.kt", l = {42, 57}, m = "runMigrations")
/* loaded from: classes.dex */
public final class DataMigrationInitializer$Companion$runMigrations$1<T> extends ContinuationImpl {
    public Serializable m;
    public Iterator n;
    public /* synthetic */ Object o;
    public int p;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.o = obj;
        this.p |= Integer.MIN_VALUE;
        return DataMigrationInitializer$Companion.a(null, null, this);
    }
}
