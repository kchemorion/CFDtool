/*==============================================================================

  Copyright (c) Kitware, Inc.

  See http://www.slicer.org/copyright/copyright.txt for details.

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

  This file was originally developed by Julien Finet, Kitware, Inc.
  and was partially funded by NIH grant 3P41RR013218-12S1

==============================================================================*/

#ifndef __qCFDtoolAppMainWindow_h
#define __qCFDtoolAppMainWindow_h

// CFDtool includes
#include "qCFDtoolAppExport.h"
class qCFDtoolAppMainWindowPrivate;

// Slicer includes
#include "qSlicerMainWindow.h"

class Q_CFDTOOL_APP_EXPORT qCFDtoolAppMainWindow : public qSlicerMainWindow
{
  Q_OBJECT
public:
  typedef qSlicerMainWindow Superclass;

  qCFDtoolAppMainWindow(QWidget *parent=0);
  virtual ~qCFDtoolAppMainWindow();

public slots:
  void on_HelpAboutCFDtoolAppAction_triggered();

protected:
  qCFDtoolAppMainWindow(qCFDtoolAppMainWindowPrivate* pimpl, QWidget* parent);

private:
  Q_DECLARE_PRIVATE(qCFDtoolAppMainWindow);
  Q_DISABLE_COPY(qCFDtoolAppMainWindow);
};

#endif
