package androidx.compose.ui.autofill;

import androidx.collection.MutableScatterMap;
import androidx.compose.ui.autofill.ContentDataType;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidAutofillManager_androidKt {
    public static final boolean a(SemanticsConfiguration semanticsConfiguration) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.s;
        MutableScatterMap mutableScatterMap = semanticsConfiguration.j;
        Object e = mutableScatterMap.e(semanticsPropertyKey);
        if (e == null) {
            e = null;
        }
        if (!Intrinsics.a(e, ContentDataType.Companion.a)) {
            if (!mutableScatterMap.b(SemanticsActions.g) && !mutableScatterMap.b(SemanticsActions.h)) {
                return false;
            }
            return true;
        }
        return false;
    }
}
