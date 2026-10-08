package io.github.vinceglb.filekit.initializer;

import android.content.Context;
import androidx.startup.Initializer;
import io.github.vinceglb.filekit.FileKit;
import io.github.vinceglb.filekit.FileKitCore;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FileKitInitializer implements Initializer<FileKit> {
    @Override // androidx.startup.Initializer
    public final List a() {
        return EmptyList.j;
    }

    @Override // androidx.startup.Initializer
    public final Object b(Context context) {
        context.getClass();
        int i = FileKitCore.a;
        new WeakReference(context);
        return FileKit.a;
    }
}
