.class public final enum Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/firebase/encoders/proto/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SDKPlatform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;",
        ">;",
        "Lcom/google/firebase/encoders/proto/ProtoEnum;"
    }
.end annotation


# static fields
.field public static final enum k:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

.field public static final enum l:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

.field public static final synthetic m:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;


# instance fields
.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 2
    .line 3
    const-string v1, "UNKNOWN_OS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->k:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 10
    .line 11
    new-instance v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 12
    .line 13
    const-string v2, "ANDROID"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->l:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 20
    .line 21
    new-instance v2, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 22
    .line 23
    const-string v3, "IOS"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 30
    .line 31
    const-string v4, "WEB"

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v4, v5, v5}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;-><init>(Ljava/lang/String;II)V

    .line 35
    .line 36
    .line 37
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->m:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->j:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->m:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->j:I

    .line 2
    .line 3
    return p0
.end method
