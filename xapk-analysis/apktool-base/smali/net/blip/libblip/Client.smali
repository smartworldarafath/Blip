.class public final Lnet/blip/libblip/Client;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/blip/libblip/LibBlip;->a:Lnet/blip/libblip/LibBlip$Companion;

    .line 5
    .line 6
    const-string v1, "LibBlipKt"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lnet/blip/libblip/LibBlip$Companion;->clientCreate(Ljava/lang/String;Ljava/lang/String;Z)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lnet/blip/libblip/Client;->a:J

    .line 14
    .line 15
    return-void
.end method
