package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.KeyEvent;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.MetadataRepo;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EmojiProcessor {
    public final EmojiCompat.SpanFactory a;
    public final MetadataRepo b;
    public final EmojiCompat.GlyphChecker c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class EmojiProcessAddSpanCallback implements EmojiProcessCallback<UnprecomputeTextOnModificationSpannable> {
        public UnprecomputeTextOnModificationSpannable a;
        public final EmojiCompat.SpanFactory b;

        public EmojiProcessAddSpanCallback(UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable, EmojiCompat.SpanFactory spanFactory) {
            this.a = unprecomputeTextOnModificationSpannable;
            this.b = spanFactory;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final Object a() {
            return this.a;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final boolean b(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            Spannable spannableString;
            if ((typefaceEmojiRasterizer.c & 4) > 0) {
                return true;
            }
            if (this.a == null) {
                if (charSequence instanceof Spannable) {
                    spannableString = (Spannable) charSequence;
                } else {
                    spannableString = new SpannableString(charSequence);
                }
                this.a = new UnprecomputeTextOnModificationSpannable(spannableString);
            }
            ((EmojiCompat.DefaultSpanFactory) this.b).getClass();
            this.a.setSpan(new EmojiSpan(typefaceEmojiRasterizer), i, i2, 33);
            return true;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface EmojiProcessCallback<T> {
        Object a();

        boolean b(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ProcessorSm {
        public int a = 1;
        public final MetadataRepo.Node b;
        public MetadataRepo.Node c;
        public MetadataRepo.Node d;
        public int e;
        public int f;

        public ProcessorSm(MetadataRepo.Node node) {
            this.b = node;
            this.c = node;
        }

        public final void a() {
            this.a = 1;
            this.c = this.b;
            this.f = 0;
        }

        public final boolean b() {
            MetadataItem b = this.c.b.b();
            int a = b.a(6);
            if ((a != 0 && b.b.get(a + b.a) != 0) || this.e == 65039) {
                return true;
            }
            return false;
        }
    }

    public EmojiProcessor(MetadataRepo metadataRepo, EmojiCompat.DefaultSpanFactory defaultSpanFactory, EmojiCompat.GlyphChecker glyphChecker, Set set) {
        this.a = defaultSpanFactory;
        this.b = metadataRepo;
        this.c = glyphChecker;
        if (!set.isEmpty()) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                int[] iArr = (int[]) it.next();
                String str = new String(iArr, 0, iArr.length);
                c(str, 0, str.length(), 1, true, new MarkExclusionCallback(str));
            }
        }
    }

    public static boolean a(Editable editable, KeyEvent keyEvent, boolean z) {
        EmojiSpan[] emojiSpanArr;
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
                for (EmojiSpan emojiSpan : emojiSpanArr) {
                    int spanStart = editable.getSpanStart(emojiSpan);
                    int spanEnd = editable.getSpanEnd(emojiSpan);
                    if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                        editable.delete(spanStart, spanEnd);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean b(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        int i3;
        if ((typefaceEmojiRasterizer.c & 3) == 0) {
            EmojiCompat.GlyphChecker glyphChecker = this.c;
            MetadataItem b = typefaceEmojiRasterizer.b();
            int a = b.a(8);
            if (a != 0) {
                b.b.getShort(a + b.a);
            }
            DefaultGlyphChecker defaultGlyphChecker = (DefaultGlyphChecker) glyphChecker;
            defaultGlyphChecker.getClass();
            ThreadLocal threadLocal = DefaultGlyphChecker.b;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            StringBuilder sb = (StringBuilder) threadLocal.get();
            sb.setLength(0);
            while (i < i2) {
                sb.append(charSequence.charAt(i));
                i++;
            }
            boolean hasGlyph = defaultGlyphChecker.a.hasGlyph(sb.toString());
            int i4 = typefaceEmojiRasterizer.c & 4;
            if (hasGlyph) {
                i3 = i4 | 2;
            } else {
                i3 = i4 | 1;
            }
            typefaceEmojiRasterizer.c = i3;
        }
        if ((typefaceEmojiRasterizer.c & 3) != 2) {
            return false;
        }
        return true;
    }

    public final Object c(CharSequence charSequence, int i, int i2, int i3, boolean z, EmojiProcessCallback emojiProcessCallback) {
        int i4;
        MetadataRepo.Node node;
        char c;
        ProcessorSm processorSm = new ProcessorSm(this.b.c);
        int codePointAt = Character.codePointAt(charSequence, i);
        int i5 = 0;
        boolean z2 = true;
        int i6 = i;
        loop0: while (true) {
            i4 = i6;
            while (i6 < i2 && i5 < i3 && z2) {
                SparseArray sparseArray = processorSm.c.a;
                if (sparseArray == null) {
                    node = null;
                } else {
                    node = (MetadataRepo.Node) sparseArray.get(codePointAt);
                }
                if (processorSm.a != 2) {
                    if (node == null) {
                        processorSm.a();
                        c = 1;
                    } else {
                        processorSm.a = 2;
                        processorSm.c = node;
                        processorSm.f = 1;
                        c = 2;
                    }
                } else {
                    if (node != null) {
                        processorSm.c = node;
                        processorSm.f++;
                    } else {
                        if (codePointAt == 65038) {
                            processorSm.a();
                        } else if (codePointAt != 65039) {
                            MetadataRepo.Node node2 = processorSm.c;
                            if (node2.b != null) {
                                if (processorSm.f == 1) {
                                    if (processorSm.b()) {
                                        processorSm.d = processorSm.c;
                                        processorSm.a();
                                    } else {
                                        processorSm.a();
                                    }
                                } else {
                                    processorSm.d = node2;
                                    processorSm.a();
                                }
                                c = 3;
                            } else {
                                processorSm.a();
                            }
                        }
                        c = 1;
                    }
                    c = 2;
                }
                processorSm.e = codePointAt;
                if (c != 1) {
                    if (c != 2) {
                        if (c == 3) {
                            if (z || !b(charSequence, i4, i6, processorSm.d.b)) {
                                z2 = emojiProcessCallback.b(charSequence, i4, i6, processorSm.d.b);
                                i5++;
                            }
                        }
                    } else {
                        int charCount = Character.charCount(codePointAt) + i6;
                        if (charCount < i2) {
                            codePointAt = Character.codePointAt(charSequence, charCount);
                        }
                        i6 = charCount;
                    }
                } else {
                    i6 = Character.charCount(Character.codePointAt(charSequence, i4)) + i4;
                    if (i6 < i2) {
                        codePointAt = Character.codePointAt(charSequence, i6);
                    }
                }
            }
        }
        if (processorSm.a == 2 && processorSm.c.b != null && ((processorSm.f > 1 || processorSm.b()) && i5 < i3 && z2 && (z || !b(charSequence, i4, i6, processorSm.c.b)))) {
            emojiProcessCallback.b(charSequence, i4, i6, processorSm.c.b);
        }
        return emojiProcessCallback.a();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class EmojiProcessLookupCallback implements EmojiProcessCallback<EmojiProcessLookupCallback> {
        public final int a;
        public int b = -1;
        public int c = -1;

        public EmojiProcessLookupCallback(int i) {
            this.a = i;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final boolean b(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            int i3 = this.a;
            if (i <= i3 && i3 < i2) {
                this.b = i;
                this.c = i2;
                return false;
            }
            if (i2 > i3) {
                return false;
            }
            return true;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final Object a() {
            return this;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class MarkExclusionCallback implements EmojiProcessCallback<MarkExclusionCallback> {
        public final String a;

        public MarkExclusionCallback(String str) {
            this.a = str;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final boolean b(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            if (TextUtils.equals(charSequence.subSequence(i, i2), this.a)) {
                typefaceEmojiRasterizer.c = (typefaceEmojiRasterizer.c & 3) | 4;
                return false;
            }
            return true;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final Object a() {
            return this;
        }
    }
}
