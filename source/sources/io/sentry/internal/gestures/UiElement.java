package io.sentry.internal.gestures;

import android.view.View;
import io.sentry.util.Objects;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UiElement {
    public final WeakReference a;
    public final String b;
    public final String c;
    public final String d = "old_view_system";

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public enum Type {
        CLICKABLE,
        SCROLLABLE
    }

    public UiElement(View view, String str, String str2) {
        this.a = new WeakReference(view);
        this.b = str;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && UiElement.class == obj.getClass()) {
                UiElement uiElement = (UiElement) obj;
                if (Objects.a(this.b, uiElement.b) && Objects.a(this.c, uiElement.c) && Objects.a(null, null)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.c, null});
    }
}
