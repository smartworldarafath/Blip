.class public final synthetic Ljh;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/view/textclassifier/TextClassification;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljh;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Ljh;->b:Landroid/view/textclassifier/TextClassification;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Ljh;->b:Landroid/view/textclassifier/TextClassification;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getText()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/high16 v1, 0xc000000

    .line 20
    .line 21
    iget-object p0, p0, Ljh;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Landroidx/compose/foundation/text/contextmenu/internal/TextClassificationHelperApi28;->a(Landroid/app/PendingIntent;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0
.end method
