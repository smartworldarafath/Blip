.class public final Lio/sentry/Attachment;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:[B

.field public final b:Lio/sentry/protocol/ViewHierarchy;

.field public final c:Lio/sentry/android/core/k;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/k;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lio/sentry/Attachment;->a:[B

    .line 33
    iput-object v0, p0, Lio/sentry/Attachment;->b:Lio/sentry/protocol/ViewHierarchy;

    .line 34
    iput-object p1, p0, Lio/sentry/Attachment;->c:Lio/sentry/android/core/k;

    .line 35
    const-string p1, "screenshot.png"

    iput-object p1, p0, Lio/sentry/Attachment;->d:Ljava/lang/String;

    .line 36
    const-string p1, "image/png"

    iput-object p1, p0, Lio/sentry/Attachment;->e:Ljava/lang/String;

    .line 37
    const-string p1, "event.attachment"

    iput-object p1, p0, Lio/sentry/Attachment;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/ViewHierarchy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/sentry/Attachment;->a:[B

    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/Attachment;->b:Lio/sentry/protocol/ViewHierarchy;

    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/Attachment;->c:Lio/sentry/android/core/k;

    .line 10
    .line 11
    const-string p1, "view-hierarchy.json"

    .line 12
    .line 13
    iput-object p1, p0, Lio/sentry/Attachment;->d:Ljava/lang/String;

    .line 14
    .line 15
    const-string p1, "application/json"

    .line 16
    .line 17
    iput-object p1, p0, Lio/sentry/Attachment;->e:Ljava/lang/String;

    .line 18
    .line 19
    const-string p1, "event.view_hierarchy"

    .line 20
    .line 21
    iput-object p1, p0, Lio/sentry/Attachment;->f:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p4, p0, Lio/sentry/Attachment;->a:[B

    const/4 p4, 0x0

    .line 26
    iput-object p4, p0, Lio/sentry/Attachment;->b:Lio/sentry/protocol/ViewHierarchy;

    .line 27
    iput-object p4, p0, Lio/sentry/Attachment;->c:Lio/sentry/android/core/k;

    .line 28
    iput-object p1, p0, Lio/sentry/Attachment;->d:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lio/sentry/Attachment;->e:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lio/sentry/Attachment;->f:Ljava/lang/String;

    return-void
.end method
