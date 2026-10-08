package io.github.vinceglb.filekit.dialogs;

import androidx.datastore.preferences.PreferencesProto$Value;
import io.github.vinceglb.filekit.dialogs.FileKitMode;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "io.github.vinceglb.filekit.dialogs.FileKitMode$Multiple", f = "FileKitMode.kt", l = {67}, m = "parseResult$FileKit_filekit_dialogs", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class FileKitMode$Multiple$parseResult$1 extends ContinuationImpl {
    public /* synthetic */ Object m;
    public final /* synthetic */ FileKitMode.Multiple n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileKitMode$Multiple$parseResult$1(FileKitMode.Multiple multiple, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.n = multiple;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.b(null, this);
    }
}
