.class public final Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

.field public e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->a:J

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->b:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->c:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->k:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 17
    .line 18
    sget-object v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->k:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->f:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->g:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->h:I

    .line 28
    .line 29
    iput v1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->i:I

    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->j:Ljava/lang/String;

    .line 32
    .line 33
    sget-object v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->k:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->k:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->l:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->m:Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->a:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->f:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v8, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->g:Ljava/lang/String;

    .line 16
    .line 17
    iget v9, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->h:I

    .line 18
    .line 19
    iget v10, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->i:I

    .line 20
    .line 21
    iget-object v11, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->j:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v12, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->k:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    .line 24
    .line 25
    iget-object v13, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->l:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v14, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->m:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct/range {v0 .. v14}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method
