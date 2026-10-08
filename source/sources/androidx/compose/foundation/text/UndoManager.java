package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.TextFieldValue;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UndoManager {
    public Entry a;
    public Entry b;
    public int c;
    public Long d;
    public boolean e;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Entry {
        public Entry a;
        public TextFieldValue b;

        public Entry(Entry entry, TextFieldValue textFieldValue) {
            this.a = entry;
            this.b = textFieldValue;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0064 A[LOOP:0: B:24:0x0058->B:29:0x0064, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0067 A[EDGE_INSN: B:30:0x0067->B:31:0x0067 BREAK  A[LOOP:0: B:24:0x0058->B:29:0x0064], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(TextFieldValue textFieldValue) {
        TextFieldValue textFieldValue2;
        String str;
        Entry entry;
        Entry entry2;
        TextFieldValue textFieldValue3;
        this.e = false;
        Entry entry3 = this.a;
        if (entry3 != null) {
            textFieldValue2 = entry3.b;
        } else {
            textFieldValue2 = null;
        }
        if (!Intrinsics.a(textFieldValue, textFieldValue2)) {
            String str2 = textFieldValue.a.k;
            Entry entry4 = this.a;
            if (entry4 != null && (textFieldValue3 = entry4.b) != null) {
                str = textFieldValue3.a.k;
            } else {
                str = null;
            }
            boolean a = Intrinsics.a(str2, str);
            Entry entry5 = this.a;
            if (a) {
                if (entry5 != null) {
                    entry5.b = textFieldValue;
                    return;
                }
                return;
            }
            this.a = new Entry(entry5, textFieldValue);
            this.b = null;
            int length = textFieldValue.a.k.length() + this.c;
            this.c = length;
            if (length > 100000) {
                Entry entry6 = this.a;
                if (entry6 != null) {
                    entry = entry6.a;
                } else {
                    entry = null;
                }
                if (entry != null) {
                    while (true) {
                        if (entry6 != null) {
                            Entry entry7 = entry6.a;
                            if (entry7 != null) {
                                entry2 = entry7.a;
                                if (entry2 != null) {
                                    break;
                                } else {
                                    entry6 = entry6.a;
                                }
                            }
                        }
                        entry2 = null;
                        if (entry2 != null) {
                        }
                    }
                    if (entry6 != null) {
                        entry6.a = null;
                    }
                }
            }
        }
    }
}
