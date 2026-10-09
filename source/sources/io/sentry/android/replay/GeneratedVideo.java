package io.sentry.android.replay;

import defpackage.q;
import java.io.File;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GeneratedVideo {
    public final File a;
    public final int b;
    public final long c;

    public GeneratedVideo(File file, int i, long j) {
        this.a = file;
        this.b = i;
        this.c = j;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof GeneratedVideo) {
                GeneratedVideo generatedVideo = (GeneratedVideo) obj;
                if (!this.a.equals(generatedVideo.a) || this.b != generatedVideo.b || this.c != generatedVideo.c) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + q.b(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "GeneratedVideo(video=" + this.a + ", frameCount=" + this.b + ", duration=" + this.c + ')';
    }
}
