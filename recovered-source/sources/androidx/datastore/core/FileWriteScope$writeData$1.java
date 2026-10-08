package androidx.datastore.core;

import java.io.FileOutputStream;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.FileWriteScope", f = "FileStorage.kt", l = {201}, m = "writeData")
/* loaded from: classes.dex */
public final class FileWriteScope$writeData$1 extends ContinuationImpl {
    public FileOutputStream m;
    public FileOutputStream n;
    public /* synthetic */ Object o;
    public final /* synthetic */ FileWriteScope p;
    public int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileWriteScope$writeData$1(FileWriteScope fileWriteScope, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.p = fileWriteScope;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.o = obj;
        this.q |= Integer.MIN_VALUE;
        return this.p.b(null, this);
    }
}
