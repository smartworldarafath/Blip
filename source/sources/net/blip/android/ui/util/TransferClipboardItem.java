package net.blip.android.ui.util;

import android.content.ClipData;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TransferClipboardItem {
    public final ClipData.Item a;
    public final String b;

    public TransferClipboardItem(ClipData.Item item, String str) {
        this.a = item;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof TransferClipboardItem) {
                TransferClipboardItem transferClipboardItem = (TransferClipboardItem) obj;
                if (!this.a.equals(transferClipboardItem.a) || !this.b.equals(transferClipboardItem.b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "TransferClipboardItem(item=" + this.a + ", mimeType=" + this.b + ")";
    }
}
