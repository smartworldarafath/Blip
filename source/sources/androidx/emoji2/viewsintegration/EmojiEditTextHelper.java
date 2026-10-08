package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EmojiEditTextHelper {
    public final HelperInternal19 a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class HelperInternal {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class HelperInternal19 extends HelperInternal {
        public final EditText a;
        public final EmojiTextWatcher b;

        public HelperInternal19(EditText editText) {
            this.a = editText;
            EmojiTextWatcher emojiTextWatcher = new EmojiTextWatcher(editText);
            this.b = emojiTextWatcher;
            editText.addTextChangedListener(emojiTextWatcher);
            if (EmojiEditableFactory.b == null) {
                synchronized (EmojiEditableFactory.a) {
                    try {
                        if (EmojiEditableFactory.b == null) {
                            Editable.Factory factory = new Editable.Factory();
                            try {
                                EmojiEditableFactory.c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, EmojiEditableFactory.class.getClassLoader());
                            } catch (Throwable unused) {
                            }
                            EmojiEditableFactory.b = factory;
                        }
                    } finally {
                    }
                }
            }
            editText.setEditableFactory(EmojiEditableFactory.b);
        }
    }

    public EmojiEditTextHelper(EditText editText) {
        this.a = new HelperInternal19(editText);
    }

    public final KeyListener a(KeyListener keyListener) {
        this.a.getClass();
        if (keyListener instanceof EmojiKeyListener) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        if (keyListener instanceof NumberKeyListener) {
            return keyListener;
        }
        return new EmojiKeyListener(keyListener);
    }

    public final InputConnection b(InputConnection inputConnection, EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        HelperInternal19 helperInternal19 = this.a;
        helperInternal19.getClass();
        if (inputConnection instanceof EmojiInputConnection) {
            return inputConnection;
        }
        return new EmojiInputConnection(helperInternal19.a, inputConnection, editorInfo);
    }

    public final void c(boolean z) {
        EmojiTextWatcher emojiTextWatcher = this.a.b;
        if (emojiTextWatcher.l != z) {
            if (emojiTextWatcher.k != null) {
                EmojiCompat a = EmojiCompat.a();
                EmojiCompat.InitCallback initCallback = emojiTextWatcher.k;
                a.getClass();
                Preconditions.c(initCallback, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = a.a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    a.b.remove(initCallback);
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
            emojiTextWatcher.l = z;
            if (z) {
                EmojiTextWatcher.a(emojiTextWatcher.j, EmojiCompat.a().d());
            }
        }
    }
}
