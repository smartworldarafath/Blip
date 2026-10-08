.class public Landroidx/core/app/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroid/os/Bundle;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:Ljava/lang/CharSequence;

.field public final g:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p3, p2}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$Action;->d:Z

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget v2, p1, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    iget-object v2, p1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Landroid/graphics/drawable/Icon;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    :cond_0
    const/4 v3, 0x2

    .line 30
    if-ne v2, v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->b()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Landroidx/core/app/NotificationCompat$Action;->e:I

    .line 37
    .line 38
    :cond_1
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action;->f:Ljava/lang/CharSequence;

    .line 43
    .line 44
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$Action;->g:Landroid/app/PendingIntent;

    .line 45
    .line 46
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->a:Landroid/os/Bundle;

    .line 47
    .line 48
    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$Action;->c:Z

    .line 49
    .line 50
    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$Action;->d:Z

    .line 51
    .line 52
    return-void
.end method
