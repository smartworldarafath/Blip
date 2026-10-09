package androidx.datastore.core;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.FileStorageConnection", f = "FileStorage.kt", l = {101}, m = "readScope")
/* loaded from: classes.dex */
public final class FileStorageConnection$readScope$1<R> extends ContinuationImpl {
    public FileStorageConnection m;
    public FileReadScope n;
    public boolean o;
    public /* synthetic */ Object p;
    public final /* synthetic */ FileStorageConnection q;
    public int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileStorageConnection$readScope$1(FileStorageConnection fileStorageConnection, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.q = fileStorageConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.p = obj;
        this.r |= Integer.MIN_VALUE;
        return this.q.a(null, this);
    }
}
