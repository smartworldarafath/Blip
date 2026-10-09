package net.blip.android.ui.home;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PeerTrayItem {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class HelpSendToOtherPeople extends PeerTrayItem {
        public static final HelpSendToOtherPeople a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof HelpSendToOtherPeople)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return 1299801432;
        }

        public final String toString() {
            return "HelpSendToOtherPeople";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class HelpSendToYourDevices extends PeerTrayItem {
        public static final HelpSendToYourDevices a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof HelpSendToYourDevices)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return -901392189;
        }

        public final String toString() {
            return "HelpSendToYourDevices";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Peer extends PeerTrayItem {
        public final net.blip.libblip.Peer a;

        public Peer(net.blip.libblip.Peer peer) {
            peer.getClass();
            this.a = peer;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Peer) && Intrinsics.a(this.a, ((Peer) obj).a)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "Peer(peer=" + this.a + ")";
        }
    }
}
