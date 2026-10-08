package androidx.compose.foundation.text.selection;

import android.app.RemoteAction;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.intl.PlatformLocaleKt;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlatformSelectionBehaviorsImpl implements PlatformSelectionBehaviors {
    public final CoroutineContext a;
    public final Context b;
    public final SelectedTextType c;
    public final LocaleList d;
    public TextClassifier f;
    public final MutexImpl e = new MutexImpl();
    public final MutableState g = SnapshotStateKt.g(null);
    public final Object h = new Object();

    public PlatformSelectionBehaviorsImpl(CoroutineContext coroutineContext, Context context, SelectedTextType selectedTextType, LocaleList localeList) {
        this.a = coroutineContext;
        this.b = context;
        this.c = selectedTextType;
        this.d = localeList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00cd, code lost:
    
        if (r1 != r5) goto L47;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007d A[Catch: all -> 0x0092, TryCatch #0 {all -> 0x0092, blocks: (B:24:0x0072, B:26:0x007d, B:28:0x0087), top: B:23:0x0072 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0098 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /* JADX WARN: Type inference failed for: r2v3, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl, CharSequence charSequence, long j, TextClassifier textClassifier, ContinuationImpl continuationImpl) {
        PlatformSelectionBehaviorsImpl$classifyText$1 platformSelectionBehaviorsImpl$classifyText$1;
        int i;
        long j2;
        CharSequence charSequence2;
        TextClassifier textClassifier2;
        MutexImpl mutexImpl;
        TextClassificationResult textClassificationResult;
        TextClassificationResult b;
        boolean z;
        MutexImpl mutexImpl2;
        MutexImpl mutexImpl3 = platformSelectionBehaviorsImpl.e;
        MutableState mutableState = platformSelectionBehaviorsImpl.g;
        try {
            if (continuationImpl instanceof PlatformSelectionBehaviorsImpl$classifyText$1) {
                platformSelectionBehaviorsImpl$classifyText$1 = (PlatformSelectionBehaviorsImpl$classifyText$1) continuationImpl;
                int i2 = platformSelectionBehaviorsImpl$classifyText$1.s;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    platformSelectionBehaviorsImpl$classifyText$1.s = i2 - Integer.MIN_VALUE;
                    Object obj = platformSelectionBehaviorsImpl$classifyText$1.q;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = platformSelectionBehaviorsImpl$classifyText$1.s;
                    Unit unit = Unit.a;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                ?? r2 = (Mutex) platformSelectionBehaviorsImpl$classifyText$1.n;
                                b = (TextClassificationResult) platformSelectionBehaviorsImpl$classifyText$1.m;
                                ResultKt.b(obj);
                                mutexImpl2 = r2;
                                try {
                                    ((SnapshotMutableStateImpl) mutableState).setValue(b);
                                    return unit;
                                } finally {
                                }
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        j2 = platformSelectionBehaviorsImpl$classifyText$1.p;
                        mutexImpl = platformSelectionBehaviorsImpl$classifyText$1.o;
                        textClassifier2 = (TextClassifier) platformSelectionBehaviorsImpl$classifyText$1.n;
                        charSequence2 = (CharSequence) platformSelectionBehaviorsImpl$classifyText$1.m;
                        ResultKt.b(obj);
                    } else {
                        ResultKt.b(obj);
                        platformSelectionBehaviorsImpl$classifyText$1.m = charSequence;
                        platformSelectionBehaviorsImpl$classifyText$1.n = textClassifier;
                        platformSelectionBehaviorsImpl$classifyText$1.o = mutexImpl3;
                        j2 = j;
                        platformSelectionBehaviorsImpl$classifyText$1.p = j2;
                        platformSelectionBehaviorsImpl$classifyText$1.s = 1;
                        if (mutexImpl3.a(platformSelectionBehaviorsImpl$classifyText$1) != coroutineSingletons) {
                            charSequence2 = charSequence;
                            textClassifier2 = textClassifier;
                            mutexImpl = mutexImpl3;
                        }
                        return coroutineSingletons;
                    }
                    textClassificationResult = (TextClassificationResult) ((SnapshotMutableStateImpl) mutableState).getValue();
                    if (textClassificationResult != null) {
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = PlatformSelectionBehaviors_androidKt.a;
                        if (TextRange.b(j2, textClassificationResult.b)) {
                            if (Intrinsics.a(charSequence2, textClassificationResult.a)) {
                                z = true;
                                if (z) {
                                    return unit;
                                }
                            }
                        }
                        z = false;
                        if (z) {
                        }
                    }
                    mutexImpl.h(null);
                    b = platformSelectionBehaviorsImpl.b(charSequence2, j2, textClassifier2.classifyText(new TextClassification.Request.Builder(charSequence2, TextRange.f(j2), TextRange.e(j2)).setDefaultLocales(platformSelectionBehaviorsImpl.c()).build()));
                    platformSelectionBehaviorsImpl$classifyText$1.m = b;
                    platformSelectionBehaviorsImpl$classifyText$1.n = mutexImpl3;
                    platformSelectionBehaviorsImpl$classifyText$1.o = null;
                    platformSelectionBehaviorsImpl$classifyText$1.s = 2;
                    Object a = mutexImpl3.a(platformSelectionBehaviorsImpl$classifyText$1);
                    mutexImpl2 = mutexImpl3;
                }
            }
            textClassificationResult = (TextClassificationResult) ((SnapshotMutableStateImpl) mutableState).getValue();
            if (textClassificationResult != null) {
            }
            mutexImpl.h(null);
            b = platformSelectionBehaviorsImpl.b(charSequence2, j2, textClassifier2.classifyText(new TextClassification.Request.Builder(charSequence2, TextRange.f(j2), TextRange.e(j2)).setDefaultLocales(platformSelectionBehaviorsImpl.c()).build()));
            platformSelectionBehaviorsImpl$classifyText$1.m = b;
            platformSelectionBehaviorsImpl$classifyText$1.n = mutexImpl3;
            platformSelectionBehaviorsImpl$classifyText$1.o = null;
            platformSelectionBehaviorsImpl$classifyText$1.s = 2;
            Object a2 = mutexImpl3.a(platformSelectionBehaviorsImpl$classifyText$1);
            mutexImpl2 = mutexImpl3;
        } finally {
        }
        platformSelectionBehaviorsImpl$classifyText$1 = new PlatformSelectionBehaviorsImpl$classifyText$1(platformSelectionBehaviorsImpl, continuationImpl);
        Object obj2 = platformSelectionBehaviorsImpl$classifyText$1.q;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = platformSelectionBehaviorsImpl$classifyText$1.s;
        Unit unit2 = Unit.a;
        if (i == 0) {
        }
    }

    public final TextClassificationResult b(CharSequence charSequence, long j, TextClassification textClassification) {
        Icon icon;
        int size = textClassification.getActions().size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            RemoteAction remoteAction = textClassification.getActions().get(i);
            RemoteAction remoteAction2 = remoteAction;
            Drawable drawable = null;
            if (i != 0 && !remoteAction2.shouldShowIcon()) {
                remoteAction = null;
            }
            RemoteAction remoteAction3 = remoteAction;
            if (remoteAction3 != null && (icon = remoteAction3.getIcon()) != null) {
                drawable = icon.loadDrawable(this.b);
            }
            arrayList.add(drawable);
        }
        return new TextClassificationResult(charSequence, j, textClassification, arrayList);
    }

    public final android.os.LocaleList c() {
        LocaleList localeList = this.d;
        if (localeList != null) {
            ArrayList arrayList = new ArrayList(CollectionsKt.m(localeList, 10));
            Iterator it = localeList.j.iterator();
            while (it.hasNext()) {
                arrayList.add(((Locale) it.next()).a);
            }
            java.util.Locale[] localeArr = (java.util.Locale[]) arrayList.toArray(new java.util.Locale[0]);
            return new android.os.LocaleList((java.util.Locale[]) Arrays.copyOf(localeArr, localeArr.length));
        }
        return new android.os.LocaleList(((Locale) PlatformLocaleKt.a.a().j.get(0)).a);
    }
}
