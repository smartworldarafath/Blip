package androidx.savedstate;

import defpackage.q;

/* loaded from: classes.dex */
public abstract class SavedStateReaderKt {
    public static final void a(String str) {
        str.getClass();
        throw new IllegalArgumentException(q.i("No valid saved state was found for the key '", str, "'. It may be missing, null, or not of the expected type. This can occur if the value was saved with a different type or if the saved state was modified unexpectedly."));
    }
}
