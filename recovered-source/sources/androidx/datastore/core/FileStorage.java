package androidx.datastore.core;

import java.io.File;
import java.util.LinkedHashSet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FileStorage<T> {
    public static final LinkedHashSet c = new LinkedHashSet();
    public static final Object d = new Object();
    public final Function1 a = AnonymousClass1.k;
    public final Function0 b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.datastore.core.FileStorage$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 extends Lambda implements Function1<File, InterProcessCoordinator> {
        public static final AnonymousClass1 k = new Lambda(1);

        @Override // kotlin.jvm.functions.Function1
        public final Object b(Object obj) {
            File file = (File) obj;
            file.getClass();
            String absolutePath = file.getCanonicalFile().getAbsolutePath();
            absolutePath.getClass();
            return new SingleProcessCoordinator(absolutePath);
        }
    }

    public FileStorage(Function0 function0) {
        this.b = function0;
    }
}
