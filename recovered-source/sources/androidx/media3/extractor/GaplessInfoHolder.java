package androidx.media3.extractor;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.metadata.id3.CommentFrame;
import androidx.media3.extractor.metadata.id3.InternalFrame;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.k7;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GaplessInfoHolder {
    public static final Pattern c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int a = -1;
    public int b = -1;

    public final boolean a(String str) {
        Matcher matcher = c.matcher(str);
        if (matcher.find()) {
            try {
                String group = matcher.group(1);
                String str2 = Util.a;
                int parseInt = Integer.parseInt(group, 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt > 0 || parseInt2 > 0) {
                    this.a = parseInt;
                    this.b = parseInt2;
                    return true;
                }
                return false;
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x007e, code lost:
    
        if (r0.apply(r6) != false) goto L27;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(Metadata metadata) {
        Metadata.Entry entry;
        metadata.getClass();
        ImmutableList.Builder k = ImmutableList.k();
        Metadata.Entry[] entryArr = metadata.a;
        int length = entryArr.length;
        int i = 0;
        while (true) {
            Metadata.Entry entry2 = null;
            if (i >= length) {
                break;
            }
            Metadata.Entry entry3 = entryArr[i];
            if (CommentFrame.class.isAssignableFrom(entry3.getClass())) {
                Metadata.Entry entry4 = (Metadata.Entry) CommentFrame.class.cast(entry3);
                if (((CommentFrame) entry4).c.equals("iTunSMPB")) {
                    entry2 = entry4;
                }
            }
            if (entry2 != null) {
                k.d(entry2);
            }
            i++;
        }
        UnmodifiableListIterator listIterator = k.i().listIterator(0);
        while (listIterator.hasNext()) {
            if (a(((CommentFrame) listIterator.next()).d)) {
                return;
            }
        }
        k7 k7Var = new k7(2);
        ImmutableList.Builder k2 = ImmutableList.k();
        for (Metadata.Entry entry5 : metadata.a) {
            if (InternalFrame.class.isAssignableFrom(entry5.getClass())) {
                entry = (Metadata.Entry) InternalFrame.class.cast(entry5);
            }
            entry = null;
            if (entry != null) {
                k2.d(entry);
            }
        }
        UnmodifiableListIterator listIterator2 = k2.i().listIterator(0);
        while (listIterator2.hasNext() && !a(((InternalFrame) listIterator2.next()).d)) {
        }
    }
}
