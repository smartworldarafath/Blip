package net.blip.android;

import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ReviewRequestPrompt", f = "ReviewRequestPrompt.kt", l = {110}, m = "observe", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class ReviewRequestPrompt$observe$1 extends ContinuationImpl {
    public /* synthetic */ Object m;
    public final /* synthetic */ ReviewRequestPrompt n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReviewRequestPrompt$observe$1(ReviewRequestPrompt reviewRequestPrompt, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.n = reviewRequestPrompt;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        this.n.c(null, null, this);
        return CoroutineSingletons.j;
    }
}
