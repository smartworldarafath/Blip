package androidx.compose.foundation.text.selection;

import android.os.Build;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import android.view.textclassifier.TextSelection;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2", f = "PlatformSelectionBehaviors.android.kt", l = {437, 161}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2 extends SuspendLambda implements Function2<TextClassifier, Continuation<? super TextRange>, Object> {
    public MutexImpl n;
    public PlatformSelectionBehaviorsImpl o;
    public long p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ CharSequence s;
    public final /* synthetic */ long t;
    public final /* synthetic */ PlatformSelectionBehaviorsImpl u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2(long j, PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl, CharSequence charSequence, Continuation continuation) {
        super(2, continuation);
        this.s = charSequence;
        this.t = j;
        this.u = platformSelectionBehaviorsImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2) s((TextClassifier) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2 platformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2 = new PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2(this.t, this.u, this.s, continuation);
        platformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2.r = obj;
        return platformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        long j;
        TextClassification textClassification;
        TextClassification textClassification2;
        TextClassificationResult textClassificationResult;
        MutexImpl mutexImpl;
        PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.q;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    j = this.p;
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                j = this.p;
                platformSelectionBehaviorsImpl = this.o;
                mutexImpl = this.n;
                textClassificationResult = (TextClassificationResult) this.r;
                ResultKt.b(obj);
                try {
                    ((SnapshotMutableStateImpl) platformSelectionBehaviorsImpl.g).setValue(textClassificationResult);
                } finally {
                    mutexImpl.h(null);
                }
            }
        } else {
            ResultKt.b(obj);
            TextClassifier textClassifier = (TextClassifier) this.r;
            long j2 = this.t;
            int f = TextRange.f(j2);
            int e = TextRange.e(j2);
            CharSequence charSequence = this.s;
            TextSelection.Request.Builder builder = new TextSelection.Request.Builder(charSequence, f, e);
            PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl2 = this.u;
            TextSelection.Request.Builder defaultLocales = builder.setDefaultLocales(platformSelectionBehaviorsImpl2.c());
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 31) {
                defaultLocales.setIncludeTextClassification(true);
            }
            TextSelection suggestSelection = textClassifier.suggestSelection(defaultLocales.build());
            long a = TextRangeKt.a(suggestSelection.getSelectionStartIndex(), suggestSelection.getSelectionEndIndex());
            if (i2 >= 31) {
                textClassification = suggestSelection.getTextClassification();
                if (textClassification != null) {
                    textClassification2 = suggestSelection.getTextClassification();
                    textClassification2.getClass();
                    TextClassificationResult b = platformSelectionBehaviorsImpl2.b(charSequence, a, textClassification2);
                    MutexImpl mutexImpl2 = platformSelectionBehaviorsImpl2.e;
                    this.r = b;
                    this.n = mutexImpl2;
                    this.o = platformSelectionBehaviorsImpl2;
                    this.p = a;
                    this.q = 1;
                    if (mutexImpl2.a(this) != coroutineSingletons) {
                        textClassificationResult = b;
                        mutexImpl = mutexImpl2;
                        platformSelectionBehaviorsImpl = platformSelectionBehaviorsImpl2;
                        j = a;
                        ((SnapshotMutableStateImpl) platformSelectionBehaviorsImpl.g).setValue(textClassificationResult);
                    }
                    return coroutineSingletons;
                }
            }
            this.p = a;
            this.q = 2;
            if (PlatformSelectionBehaviorsImpl.a(this.u, this.s, a, textClassifier, this) != coroutineSingletons) {
                j = a;
            }
            return coroutineSingletons;
        }
        return new TextRange(j);
    }
}
