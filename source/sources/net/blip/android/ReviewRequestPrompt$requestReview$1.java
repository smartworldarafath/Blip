package net.blip.android;

import android.app.Activity;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ReviewRequestPrompt", f = "ReviewRequestPrompt.kt", l = {68, 76}, m = "requestReview", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class ReviewRequestPrompt$requestReview$1 extends ContinuationImpl {
    public Activity m;
    public /* synthetic */ Object n;
    public final /* synthetic */ ReviewRequestPrompt o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReviewRequestPrompt$requestReview$1(ReviewRequestPrompt reviewRequestPrompt, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.o = reviewRequestPrompt;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return ReviewRequestPrompt.b(this.o, null, this);
    }
}
