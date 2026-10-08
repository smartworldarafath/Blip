package net.blip.android.shortcuts;

import java.util.ArrayList;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ShortcutFingerprint {
    public final ArrayList a;
    public final ArrayList b;
    public final Set c;

    public ShortcutFingerprint(ArrayList arrayList, ArrayList arrayList2, Set set) {
        this.a = arrayList;
        this.b = arrayList2;
        this.c = set;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ShortcutFingerprint) {
                ShortcutFingerprint shortcutFingerprint = (ShortcutFingerprint) obj;
                if (!this.a.equals(shortcutFingerprint.a) || !this.b.equals(shortcutFingerprint.b) || !this.c.equals(shortcutFingerprint.c)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "ShortcutFingerprint(dynamicPeerIds=" + this.a + ", peers=" + this.b + ", stalePinnedIds=" + this.c + ")";
    }
}
