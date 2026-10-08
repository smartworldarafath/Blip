.class public final Lnet/blip/libblip/LibBlip$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/LibBlip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# virtual methods
.method public final native clientCreate(Ljava/lang/String;Ljava/lang/String;Z)J
.end method

.method public final native clientDispatch(J[B)V
.end method

.method public final native clientExists(J)Z
.end method

.method public final native clientGetState(JLjava/nio/ByteBuffer;)V
.end method

.method public final native configureLogging(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public final native log(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public final native setCrashOutput(Ljava/lang/String;)V
.end method

.method public final native startHosting(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final native stopHosting()V
.end method
