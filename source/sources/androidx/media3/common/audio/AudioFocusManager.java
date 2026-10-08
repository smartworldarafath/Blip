package androidx.media3.common.audio;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.audio.AudioFocusManager;
import androidx.media3.common.audio.AudioFocusRequestCompat;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import defpackage.e3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioFocusManager {
    public final Supplier a;
    public final Handler b;
    public PlayerControl c;
    public AudioAttributes d;
    public int f;
    public AudioFocusRequestCompat h;
    public float g = 1.0f;
    public int e = 0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface PlayerControl {
        void b(int i);

        void d();
    }

    public AudioFocusManager(Context context, Looper looper, PlayerControl playerControl) {
        this.a = Suppliers.a(new e3(context, 0));
        this.c = playerControl;
        this.b = new Handler(looper);
    }

    public final void a() {
        int i = this.e;
        if (i != 1 && i != 0 && this.h != null) {
            AudioManager audioManager = (AudioManager) this.a.get();
            AudioFocusRequest audioFocusRequest = this.h.e;
            audioFocusRequest.getClass();
            audioManager.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    public final void b(int i) {
        float f;
        if (this.e != i) {
            this.e = i;
            if (i == 4) {
                f = 0.2f;
            } else {
                f = 1.0f;
            }
            if (this.g != f) {
                this.g = f;
                PlayerControl playerControl = this.c;
                if (playerControl != null) {
                    playerControl.d();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.media3.common.audio.AudioFocusRequestCompat$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v6, types: [androidx.media3.common.audio.AudioFocusRequestCompat$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0, types: [d3] */
    public final int c(int i, boolean z) {
        int i2;
        AudioFocusRequestCompat.Builder builder;
        if (i != 1 && (i2 = this.f) == 1) {
            int i3 = this.e;
            if (z) {
                if (i3 != 2) {
                    AudioFocusRequestCompat audioFocusRequestCompat = this.h;
                    if (audioFocusRequestCompat == null) {
                        if (audioFocusRequestCompat == null) {
                            ?? obj = new Object();
                            obj.b = AudioAttributes.b;
                            obj.a = i2;
                            builder = obj;
                        } else {
                            ?? obj2 = new Object();
                            obj2.a = audioFocusRequestCompat.a;
                            obj2.b = audioFocusRequestCompat.d;
                            builder = obj2;
                        }
                        AudioAttributes audioAttributes = this.d;
                        audioAttributes.getClass();
                        builder.b = audioAttributes;
                        builder.c = true;
                        ?? r6 = new AudioManager.OnAudioFocusChangeListener() { // from class: d3
                            @Override // android.media.AudioManager.OnAudioFocusChangeListener
                            public final void onAudioFocusChange(int i4) {
                                AudioFocusManager audioFocusManager = AudioFocusManager.this;
                                audioFocusManager.getClass();
                                if (i4 != -3 && i4 != -2) {
                                    if (i4 != -1) {
                                        if (i4 != 1) {
                                            q.x("Unknown focus change type: ", i4, "AudioFocusManager");
                                            return;
                                        }
                                        audioFocusManager.b(2);
                                        AudioFocusManager.PlayerControl playerControl = audioFocusManager.c;
                                        if (playerControl != null) {
                                            playerControl.b(1);
                                            return;
                                        }
                                        return;
                                    }
                                    AudioFocusManager.PlayerControl playerControl2 = audioFocusManager.c;
                                    if (playerControl2 != null) {
                                        playerControl2.b(-1);
                                    }
                                    audioFocusManager.a();
                                    audioFocusManager.b(1);
                                    return;
                                }
                                if (i4 != -2) {
                                    audioFocusManager.b(4);
                                    return;
                                }
                                AudioFocusManager.PlayerControl playerControl3 = audioFocusManager.c;
                                if (playerControl3 != null) {
                                    playerControl3.b(0);
                                }
                                audioFocusManager.b(3);
                            }
                        };
                        Handler handler = this.b;
                        handler.getClass();
                        this.h = new AudioFocusRequestCompat(builder.a, r6, handler, builder.b, builder.c);
                    }
                    AudioManager audioManager = (AudioManager) this.a.get();
                    AudioFocusRequest audioFocusRequest = this.h.e;
                    audioFocusRequest.getClass();
                    int requestAudioFocus = audioManager.requestAudioFocus(audioFocusRequest);
                    if (requestAudioFocus != 1 && requestAudioFocus != 2) {
                        b(1);
                        return -1;
                    }
                    b(2);
                    return 1;
                }
            } else {
                if (i3 == 1) {
                    return -1;
                }
                if (i3 == 3) {
                    return 0;
                }
            }
            return 1;
        }
        a();
        b(0);
        return 1;
    }
}
