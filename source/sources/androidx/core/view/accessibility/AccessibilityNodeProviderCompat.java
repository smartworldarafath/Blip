package androidx.core.view.accessibility;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class AccessibilityNodeProviderCompat {
    public final AccessibilityNodeProvider a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class AccessibilityNodeProviderApi19 extends AccessibilityNodeProvider {
        public final AccessibilityNodeProviderCompat a;

        public AccessibilityNodeProviderApi19(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            this.a = accessibilityNodeProviderCompat;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            AccessibilityNodeInfoCompat b = this.a.b(i);
            if (b == null) {
                return null;
            }
            return b.a;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final List findAccessibilityNodeInfosByText(String str, int i) {
            this.a.getClass();
            return null;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final AccessibilityNodeInfo findFocus(int i) {
            AccessibilityNodeInfoCompat c = this.a.c(i);
            if (c == null) {
                return null;
            }
            return c.a;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final boolean performAction(int i, int i2, Bundle bundle) {
            return this.a.d(i, i2, bundle);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class AccessibilityNodeProviderApi26 extends AccessibilityNodeProviderApi19 {
        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
            this.a.a(i, new AccessibilityNodeInfoCompat(accessibilityNodeInfo), str, bundle);
        }
    }

    public AccessibilityNodeProviderCompat() {
        this.a = new AccessibilityNodeProviderApi19(this);
    }

    public AccessibilityNodeInfoCompat b(int i) {
        return null;
    }

    public AccessibilityNodeInfoCompat c(int i) {
        return null;
    }

    public boolean d(int i, int i2, Bundle bundle) {
        return false;
    }

    public AccessibilityNodeProviderCompat(AccessibilityNodeProvider accessibilityNodeProvider) {
        this.a = accessibilityNodeProvider;
    }

    public void a(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
    }
}
