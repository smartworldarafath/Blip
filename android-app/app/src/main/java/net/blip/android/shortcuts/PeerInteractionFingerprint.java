package net.blip.android.shortcuts;

import java.time.Instant;
import kotlin.jvm.internal.Intrinsics;
import net.blip.libblip.PeerId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class PeerInteractionFingerprint {
    public final PeerId a;
    public final Object b;

    public PeerInteractionFingerprint(PeerId peerId, Instant instant) {
        peerId.getClass();
        this.a = peerId;
        this.b = instant;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PeerInteractionFingerprint)) {
            return false;
        }
        PeerInteractionFingerprint peerInteractionFingerprint = (PeerInteractionFingerprint) obj;
        if (Intrinsics.a(this.a, peerInteractionFingerprint.a) && Intrinsics.a(this.b, peerInteractionFingerprint.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.a.hashCode() * 31;
        Object obj = this.b;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final String toString() {
        return "PeerInteractionFingerprint(peerId=" + this.a + ", time=" + this.b + ")";
    }
}
