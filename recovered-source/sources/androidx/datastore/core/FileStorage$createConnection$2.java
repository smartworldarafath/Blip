package androidx.datastore.core;

import java.io.File;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FileStorage$createConnection$2 extends Lambda implements Function0<Unit> {
    public final /* synthetic */ File k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileStorage$createConnection$2(File file) {
        super(0);
        this.k = file;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        Object obj = FileStorage.d;
        File file = this.k;
        synchronized (obj) {
            FileStorage.c.remove(file.getAbsolutePath());
        }
        return Unit.a;
    }
}
