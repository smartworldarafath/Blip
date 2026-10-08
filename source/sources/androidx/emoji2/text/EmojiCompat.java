package androidx.emoji2.text;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import androidx.collection.ArraySet;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiProcessor;
import androidx.emoji2.text.flatbuffer.MetadataList;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class EmojiCompat {
    public static final Object j = new Object();
    public static volatile EmojiCompat k;
    public final ReentrantReadWriteLock a;
    public final ArraySet b;
    public volatile int c;
    public final Handler d;
    public final CompatInternal19 e;
    public final MetadataRepoLoader f;
    public final DefaultSpanFactory g;
    public final int h;
    public final GlyphChecker i;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class CompatInternal {
        public final EmojiCompat a;

        public CompatInternal(EmojiCompat emojiCompat) {
            this.a = emojiCompat;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CompatInternal19 extends CompatInternal {
        public volatile EmojiProcessor b;
        public volatile MetadataRepo c;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: androidx.emoji2.text.EmojiCompat$CompatInternal19$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 extends MetadataRepoLoaderCallback {
            public AnonymousClass1() {
            }

            @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
            public final void a(Throwable th) {
                CompatInternal19.this.a.i(th);
            }

            @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
            public final void b(MetadataRepo metadataRepo) {
                Set<int[]> a;
                CompatInternal19 compatInternal19 = CompatInternal19.this;
                compatInternal19.c = metadataRepo;
                MetadataRepo metadataRepo2 = compatInternal19.c;
                EmojiCompat emojiCompat = compatInternal19.a;
                DefaultSpanFactory defaultSpanFactory = emojiCompat.g;
                GlyphChecker glyphChecker = emojiCompat.i;
                if (Build.VERSION.SDK_INT >= 34) {
                    a = EmojiExclusions$EmojiExclusions_Api34.a();
                } else {
                    a = EmojiExclusions$EmojiExclusions_Reflections.a();
                }
                compatInternal19.b = new EmojiProcessor(metadataRepo2, defaultSpanFactory, glyphChecker, a);
                EmojiCompat emojiCompat2 = compatInternal19.a;
                ArrayList arrayList = new ArrayList();
                emojiCompat2.a.writeLock().lock();
                try {
                    emojiCompat2.c = 1;
                    arrayList.addAll(emojiCompat2.b);
                    emojiCompat2.b.clear();
                    emojiCompat2.a.writeLock().unlock();
                    emojiCompat2.d.post(new ListenerDispatcher(arrayList, emojiCompat2.c, null));
                } catch (Throwable th) {
                    emojiCompat2.a.writeLock().unlock();
                    throw th;
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Config {
        public final MetadataRepoLoader a;
        public int b = 0;
        public final GlyphChecker c = new DefaultGlyphChecker();

        public Config(MetadataRepoLoader metadataRepoLoader) {
            this.a = metadataRepoLoader;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class DefaultSpanFactory implements SpanFactory {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface GlyphChecker {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ListenerDispatcher implements Runnable {
        public final ArrayList j;
        public final int k;

        public ListenerDispatcher(List list, int i, Throwable th) {
            Preconditions.c(list, "initCallbacks cannot be null");
            this.j = new ArrayList(list);
            this.k = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ArrayList arrayList = this.j;
            int size = arrayList.size();
            int i = 0;
            if (this.k != 1) {
                while (i < size) {
                    ((InitCallback) arrayList.get(i)).a();
                    i++;
                }
            } else {
                while (i < size) {
                    ((InitCallback) arrayList.get(i)).b();
                    i++;
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface MetadataRepoLoader {
        void a(MetadataRepoLoaderCallback metadataRepoLoaderCallback);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class MetadataRepoLoaderCallback {
        public abstract void a(Throwable th);

        public abstract void b(MetadataRepo metadataRepo);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface SpanFactory {
    }

    /* JADX WARN: Type inference failed for: r6v4, types: [androidx.emoji2.text.EmojiCompat$DefaultSpanFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v5, types: [androidx.emoji2.text.EmojiCompat$CompatInternal, androidx.emoji2.text.EmojiCompat$CompatInternal19] */
    public EmojiCompat(Config config) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.a = reentrantReadWriteLock;
        this.c = 3;
        MetadataRepoLoader metadataRepoLoader = config.a;
        this.f = metadataRepoLoader;
        int i = config.b;
        this.h = i;
        this.i = config.c;
        this.d = new Handler(Looper.getMainLooper());
        this.b = new ArraySet(0);
        this.g = new Object();
        ?? compatInternal = new CompatInternal(this);
        this.e = compatInternal;
        reentrantReadWriteLock.writeLock().lock();
        if (i == 0) {
            try {
                this.c = 0;
            } catch (Throwable th) {
                this.a.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (d() == 0) {
            try {
                metadataRepoLoader.a(new CompatInternal19.AnonymousClass1());
            } catch (Throwable th2) {
                i(th2);
            }
        }
    }

    public static EmojiCompat a() {
        EmojiCompat emojiCompat;
        boolean z;
        synchronized (j) {
            try {
                emojiCompat = k;
                if (emojiCompat != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    throw new IllegalStateException("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
                }
            } finally {
            }
        }
        return emojiCompat;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0045, code lost:
    
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0082, code lost:
    
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0075, code lost:
    
        if (r11 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00a2, code lost:
    
        if (r10 != (-1)) goto L70;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean e(InputConnection inputConnection, Editable editable, int i, int i2, boolean z) {
        int min;
        if (editable != null && i >= 0 && i2 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd) {
                if (z) {
                    int max = Math.max(i, 0);
                    int length = editable.length();
                    if (selectionStart >= 0 && length >= selectionStart && max >= 0) {
                        loop0: while (true) {
                            boolean z2 = false;
                            while (true) {
                                if (max == 0) {
                                    break loop0;
                                }
                                selectionStart--;
                                if (selectionStart < 0) {
                                    if (!z2) {
                                        selectionStart = 0;
                                    }
                                } else {
                                    char charAt = editable.charAt(selectionStart);
                                    if (z2) {
                                        break;
                                    }
                                    if (Character.isSurrogate(charAt)) {
                                        if (Character.isHighSurrogate(charAt)) {
                                            break loop0;
                                        }
                                        z2 = true;
                                    } else {
                                        max--;
                                    }
                                }
                            }
                            max--;
                        }
                    }
                    selectionStart = -1;
                    int max2 = Math.max(i2, 0);
                    min = editable.length();
                    if (selectionEnd >= 0 && min >= selectionEnd && max2 >= 0) {
                        loop2: while (true) {
                            boolean z3 = false;
                            while (true) {
                                if (max2 == 0) {
                                    min = selectionEnd;
                                    break loop2;
                                }
                                if (selectionEnd < min) {
                                    char charAt2 = editable.charAt(selectionEnd);
                                    if (z3) {
                                        break;
                                    }
                                    if (!Character.isSurrogate(charAt2)) {
                                        max2--;
                                        selectionEnd++;
                                    } else {
                                        if (Character.isLowSurrogate(charAt2)) {
                                            break loop2;
                                        }
                                        selectionEnd++;
                                        z3 = true;
                                    }
                                }
                            }
                            max2--;
                            selectionEnd++;
                        }
                    }
                    min = -1;
                    if (selectionStart != -1) {
                    }
                } else {
                    selectionStart = Math.max(selectionStart - i, 0);
                    min = Math.min(selectionEnd + i2, editable.length());
                }
                EmojiSpan[] emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, min, EmojiSpan.class);
                if (emojiSpanArr != null && emojiSpanArr.length > 0) {
                    for (EmojiSpan emojiSpan : emojiSpanArr) {
                        int spanStart = editable.getSpanStart(emojiSpan);
                        int spanEnd = editable.getSpanEnd(emojiSpan);
                        selectionStart = Math.min(spanStart, selectionStart);
                        min = Math.max(spanEnd, min);
                    }
                    int max3 = Math.max(selectionStart, 0);
                    int min2 = Math.min(min, editable.length());
                    InputConnectionWrapper inputConnectionWrapper = (InputConnectionWrapper) inputConnection;
                    inputConnectionWrapper.beginBatchEdit();
                    editable.delete(max3, min2);
                    inputConnectionWrapper.endBatchEdit();
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean f(Editable editable, int i, KeyEvent keyEvent) {
        boolean a;
        if (i != 67) {
            if (i != 112) {
                a = false;
            } else {
                a = EmojiProcessor.a(editable, keyEvent, true);
            }
        } else {
            a = EmojiProcessor.a(editable, keyEvent, false);
        }
        if (!a) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    public static boolean g() {
        if (k != null) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int b(int i, String str) {
        boolean z = true;
        if (d() != 1) {
            z = false;
        }
        if (z) {
            Preconditions.c(str, "charSequence cannot be null");
            EmojiProcessor emojiProcessor = this.e.b;
            emojiProcessor.getClass();
            if (i >= 0 && i < str.length()) {
                if (str instanceof Spanned) {
                    Spanned spanned = (Spanned) str;
                    EmojiSpan[] emojiSpanArr = (EmojiSpan[]) spanned.getSpans(i, i + 1, EmojiSpan.class);
                    if (emojiSpanArr.length > 0) {
                        return spanned.getSpanEnd(emojiSpanArr[0]);
                    }
                }
                return ((EmojiProcessor.EmojiProcessLookupCallback) emojiProcessor.c(str, Math.max(0, i - 16), Math.min(str.length(), i + 16), Integer.MAX_VALUE, true, new EmojiProcessor.EmojiProcessLookupCallback(i))).c;
            }
            return -1;
        }
        u2.l("Not initialized yet");
        return 0;
    }

    public final int c(CharSequence charSequence, int i) {
        boolean z = true;
        if (d() != 1) {
            z = false;
        }
        if (z) {
            Preconditions.c(charSequence, "charSequence cannot be null");
            EmojiProcessor emojiProcessor = this.e.b;
            emojiProcessor.getClass();
            if (i >= 0 && i < charSequence.length()) {
                if (charSequence instanceof Spanned) {
                    Spanned spanned = (Spanned) charSequence;
                    EmojiSpan[] emojiSpanArr = (EmojiSpan[]) spanned.getSpans(i, i + 1, EmojiSpan.class);
                    if (emojiSpanArr.length > 0) {
                        return spanned.getSpanStart(emojiSpanArr[0]);
                    }
                }
                return ((EmojiProcessor.EmojiProcessLookupCallback) emojiProcessor.c(charSequence, Math.max(0, i - 16), Math.min(charSequence.length(), i + 16), Integer.MAX_VALUE, true, new EmojiProcessor.EmojiProcessLookupCallback(i))).b;
            }
            return -1;
        }
        u2.l("Not initialized yet");
        return 0;
    }

    public final int d() {
        this.a.readLock().lock();
        try {
            return this.c;
        } finally {
            this.a.readLock().unlock();
        }
    }

    public final void h() {
        boolean z;
        if (this.h == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (d() == 1) {
                return;
            }
            this.a.writeLock().lock();
            try {
                if (this.c == 0) {
                    return;
                }
                this.c = 0;
                this.a.writeLock().unlock();
                CompatInternal19 compatInternal19 = this.e;
                EmojiCompat emojiCompat = compatInternal19.a;
                try {
                    emojiCompat.f.a(new CompatInternal19.AnonymousClass1());
                    return;
                } catch (Throwable th) {
                    emojiCompat.i(th);
                    return;
                }
            } finally {
                this.a.writeLock().unlock();
            }
        }
        u2.l("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
    }

    public final void i(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.a.writeLock().lock();
        try {
            this.c = 2;
            arrayList.addAll(this.b);
            this.b.clear();
            this.a.writeLock().unlock();
            this.d.post(new ListenerDispatcher(arrayList, this.c, th));
        } catch (Throwable th2) {
            this.a.writeLock().unlock();
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00a5 A[Catch: all -> 0x0088, TryCatch #0 {all -> 0x0088, blocks: (B:31:0x0060, B:34:0x0065, B:36:0x0069, B:38:0x0076, B:40:0x0095, B:42:0x009f, B:44:0x00a2, B:46:0x00a5, B:48:0x00b5, B:49:0x00b8), top: B:30:0x0060 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:76:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, androidx.emoji2.text.UnprecomputeTextOnModificationSpannable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final CharSequence j(int i, int i2, int i3, CharSequence charSequence) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        Throwable th;
        CharSequence charSequence2;
        int i4;
        int i5;
        EmojiSpan[] emojiSpanArr;
        if (d() == 1) {
            z = true;
        } else {
            z = false;
        }
        UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable = null;
        unprecomputeTextOnModificationSpannable = null;
        if (z) {
            if (i >= 0) {
                if (i2 >= 0) {
                    if (i <= i2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    Preconditions.a("start should be <= than end", z2);
                    if (charSequence == null) {
                        return null;
                    }
                    if (i <= charSequence.length()) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    Preconditions.a("start should be < than charSequence length", z3);
                    if (i2 <= charSequence.length()) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    Preconditions.a("end should be < than charSequence length", z4);
                    if (charSequence.length() == 0 || i == i2) {
                        return charSequence;
                    }
                    if (i3 != 1) {
                        z5 = false;
                    } else {
                        z5 = true;
                    }
                    EmojiProcessor emojiProcessor = this.e.b;
                    emojiProcessor.getClass();
                    boolean z6 = charSequence instanceof SpannableBuilder;
                    if (z6) {
                        ((SpannableBuilder) charSequence).a();
                    }
                    try {
                        if (!z6) {
                            try {
                                if (!(charSequence instanceof Spannable)) {
                                    if ((charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(i - 1, i2 + 1, EmojiSpan.class) <= i2) {
                                        ?? obj = new Object();
                                        obj.j = false;
                                        obj.k = new SpannableString(charSequence);
                                        unprecomputeTextOnModificationSpannable = obj;
                                    }
                                    if (unprecomputeTextOnModificationSpannable != null && (emojiSpanArr = (EmojiSpan[]) unprecomputeTextOnModificationSpannable.k.getSpans(i, i2, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
                                        for (EmojiSpan emojiSpan : emojiSpanArr) {
                                            int spanStart = unprecomputeTextOnModificationSpannable.k.getSpanStart(emojiSpan);
                                            int spanEnd = unprecomputeTextOnModificationSpannable.k.getSpanEnd(emojiSpan);
                                            if (spanStart != i2) {
                                                unprecomputeTextOnModificationSpannable.removeSpan(emojiSpan);
                                            }
                                            i = Math.min(spanStart, i);
                                            i2 = Math.max(spanEnd, i2);
                                        }
                                    }
                                    i4 = i;
                                    i5 = i2;
                                    if (i4 != i5 || i4 >= charSequence.length()) {
                                        charSequence2 = charSequence;
                                        if (!z6) {
                                            return charSequence2;
                                        }
                                    } else {
                                        charSequence2 = charSequence;
                                        try {
                                            UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable2 = (UnprecomputeTextOnModificationSpannable) emojiProcessor.c(charSequence2, i4, i5, Integer.MAX_VALUE, z5, new EmojiProcessor.EmojiProcessAddSpanCallback(unprecomputeTextOnModificationSpannable, emojiProcessor.a));
                                            if (unprecomputeTextOnModificationSpannable2 != null) {
                                                Spannable spannable = unprecomputeTextOnModificationSpannable2.k;
                                                if (z6) {
                                                    ((SpannableBuilder) charSequence2).b();
                                                }
                                                return spannable;
                                            }
                                            if (!z6) {
                                                return charSequence2;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            th = th;
                                            if (z6) {
                                            }
                                        }
                                    }
                                    ((SpannableBuilder) charSequence2).b();
                                    return charSequence2;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                charSequence2 = charSequence;
                                if (z6) {
                                    ((SpannableBuilder) charSequence2).b();
                                    throw th;
                                }
                                throw th;
                            }
                        }
                        unprecomputeTextOnModificationSpannable = new UnprecomputeTextOnModificationSpannable((Spannable) charSequence);
                        if (unprecomputeTextOnModificationSpannable != null) {
                            while (r1 < r0) {
                            }
                        }
                        i4 = i;
                        i5 = i2;
                        if (i4 != i5) {
                        }
                        charSequence2 = charSequence;
                        if (!z6) {
                        }
                        ((SpannableBuilder) charSequence2).b();
                        return charSequence2;
                    } catch (Throwable th4) {
                        th = th4;
                        charSequence2 = charSequence;
                        th = th;
                        if (z6) {
                        }
                    }
                } else {
                    u2.g("end cannot be negative");
                    return null;
                }
            } else {
                u2.g("start cannot be negative");
                return null;
            }
        } else {
            u2.l("Not initialized yet");
            return null;
        }
    }

    public final void k(InitCallback initCallback) {
        Preconditions.c(initCallback, "initCallback cannot be null");
        this.a.writeLock().lock();
        try {
            if (this.c != 1 && this.c != 2) {
                this.b.add(initCallback);
                this.a.writeLock().unlock();
            }
            this.d.post(new ListenerDispatcher(Arrays.asList(initCallback), this.c, null));
            this.a.writeLock().unlock();
        } catch (Throwable th) {
            this.a.writeLock().unlock();
            throw th;
        }
    }

    public final void l(EditorInfo editorInfo) {
        int i;
        if (d() != 1 || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        CompatInternal19 compatInternal19 = this.e;
        compatInternal19.getClass();
        Bundle bundle = editorInfo.extras;
        MetadataList metadataList = compatInternal19.c.a;
        int a = metadataList.a(4);
        if (a != 0) {
            i = metadataList.b.getInt(a + metadataList.a);
        } else {
            i = 0;
        }
        bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", i);
        editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class InitCallback {
        public abstract void b();

        public void a() {
        }
    }
}
