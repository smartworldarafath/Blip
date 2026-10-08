.class public final Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/view/autofill/AutofillManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/autofill/AutofillManager;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b:Landroid/view/autofill/AutofillManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a:Landroid/content/Context;

    .line 6
    .line 7
    const-class v1, Landroid/view/autofill/AutofillManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b:Landroid/view/autofill/AutofillManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    const-string p0, "Could not locate AutofillManager from context"

    .line 21
    .line 22
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_1
    return-object v0
.end method

.method public final b(Landroid/view/View;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a()Landroid/view/autofill/AutofillManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
